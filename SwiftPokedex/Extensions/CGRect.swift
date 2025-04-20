//
//  CGRect.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import Foundation

extension CGRect {
    
    func imageInset() -> CGRect {
        inset(by: .init(top: 0, left: 10, bottom: 15, right: 10))
    }
}
