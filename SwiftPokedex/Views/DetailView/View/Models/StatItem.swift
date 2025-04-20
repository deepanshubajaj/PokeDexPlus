//
//  StatItem.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit

struct StatItem {
    let id = UUID()
    let title: String
    let value: Int
    let color: UIColor
}

// MARK: -
extension StatItem: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
