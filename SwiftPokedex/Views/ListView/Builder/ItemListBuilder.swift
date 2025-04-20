//
//  ItemListBuilder.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import Foundation

final class ItemListBuilder {
    
    static func build() -> NavigationController {
        let router = ItemListRouter()
        let interactor = ItemListInteractor(router: router, service: .default)
        let viewController = ItemListController(viewModel: .init(), interactor: interactor)
        let navigationController = NavigationController(rootViewController: viewController)
        MusicToggleButton.addMusicButton(to: viewController)
        interactor.view = viewController
        router.navigationController = navigationController
        return navigationController
    }
}
