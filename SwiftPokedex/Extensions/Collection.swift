//
//  Collection.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import Foundation

extension Collection where Element == ItemDetails {
    
    func filtered(from string: String) -> [Element] {
        filter {
            $0.name.foundMatch(for: string) ||
            $0.effect.description.foundMatch(for: string) ||
            $0.category.name.foundMatch(for: string)
        }.sorted(by: { $0.name < $1.name })
    }
}
