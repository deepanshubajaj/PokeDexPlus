//
//  UIScrollView.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

extension UIScrollView {
    
    var hasScrolledToBottom: Bool {
        contentSize.height - contentOffset.y < frame.size.height * 1.6
    }
}
