//
//  ItemListRouter.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit

protocol ItemListRoutable: Routable {
    func routeToItemList(with data: ItemData)
}

// MARK: -
final class ItemListRouter: ItemListRoutable {
    
    // MARK: Public properties
    weak var navigationController: UINavigationController?
    
    // MARK: - Public functions
    func routeToItemList(with data: ItemData) {
        let itemsView = ItemsBuilder.build(withItemData: data)
        navigationController?.pushViewController(itemsView, animated: true)
    }
}
