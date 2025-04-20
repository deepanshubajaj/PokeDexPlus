//
//  DetailItem.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import Foundation

struct DetailItem {
    let id = UUID()
    let title: String
    let value: String
}

// MARK: -
extension DetailItem: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
