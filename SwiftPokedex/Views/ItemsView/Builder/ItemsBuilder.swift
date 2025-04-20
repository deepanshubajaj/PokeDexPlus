//
//  ItemsBuilder.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit

final class ItemsBuilder {
    
    static func build(withItemData itemData: ItemData?) -> ItemsController {
        let title = itemData?.title
        let items = itemData?.items ?? []
        let viewModel = ItemsView.ViewModel(title: title, items: items)
        return ItemsController(viewModel: viewModel)
    }
}
