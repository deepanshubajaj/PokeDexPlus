//
//  Identifiable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import Foundation

protocol Identifiable {
    static var identifier: String { get }
}

// MARK: -
extension Identifiable {
    static var identifier: String { String(describing: self) }
}
