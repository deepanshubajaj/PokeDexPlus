//
//  ItemListViewModel.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit

extension ItemListView {
    
    final class ViewModel {
        @Published var state: State = .idle
        
        enum State {
            case idle
            case loading
            case loaded([ItemData])
        }
    }
}

// MARK: -
extension ItemListView.ViewModel {
    var title: String { "Items" }
}
