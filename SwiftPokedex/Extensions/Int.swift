//
//  Int.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import Foundation

extension Int {
    var meter: String { String(format: "%.1f m", Double(self) / 10.0) }
    var kilo: String { String(format: "%.1f kg", Double(self) / 10.0) }
}
