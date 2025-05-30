//
//  ListInteractor.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit
import Combine
import Networking

protocol ItemListInteractable {
    func loadItems()
}

// MARK: -
final class ItemListInteractor: ItemListInteractable {
    
    // MARK: Private properties
    private var cancellables = Set<AnyCancellable>()
    private let service: Network.Service
    private let router: ItemListRoutable
    
    // MARK: - Public properties
    weak var view: ItemListViewProtocol? { didSet { setupInteractionPublisher() } }
    
    init(router: ItemListRoutable, service: Network.Service) {
        self.router = router
        self.service = service
    }
    
    // MARK: - Public functions
    func loadItems() {
        view?.viewModel.state = .loading
        
        let request = ItemRequest.items(limit: 420)
        try! service.request(request, logResponse: true)
            .flatMap { (response: APIResponse) in
                Publishers.Sequence<[APIItem], Error>(sequence: response.results)
                    .tryCompactMap { [weak self] output -> AnyPublisher<ItemDetails, Error>? in
                        guard let self = self else { return nil }
                        return try self.service.request(ItemDetailRequest.item(output.url.asURL().lastPathComponent))
                    }
                    .flatMap { $0 }
                    .collect()
            }
            .sink { [weak self] result in
                switch result {
                case .success(let data):
                    self?.view?.viewModel.state = .loaded(data.categories)
                case .failure(let error):
                    print(error.localizedDescription)
                    print()
                }
            }
            .store(in: &cancellables)
    }
    
    // MARK: - Private functions
    private func setupInteractionPublisher() {
        view?.interaction.sink { [weak self] interaction in
            switch interaction {
            case .selectItem(let item):
                self?.router.routeToItemList(with: item)
            case .search(let text):
                print(text)
            }
        }.store(in: &cancellables)
    }
}
