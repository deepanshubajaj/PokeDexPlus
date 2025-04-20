//
//  HeaderView.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

extension Transition.Animator {
    
    final class Header: UIView {
        init(frame: CGRect, image: UIImage?, cornerRadius: CGFloat) {
            super.init(frame: frame)
            layer.cornerRadius = cornerRadius
            backgroundColor = image?.dominantColor
            alpha = 0.0
        }
        
        required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    }
}
