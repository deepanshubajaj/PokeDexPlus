//
//  ImageView.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

extension Transition.Animator {
    
    final class Image: UIImageView {
        init(frame: CGRect, image: UIImage?) {
            super.init(frame: frame)
            contentMode = .scaleAspectFill
            self.image = image
            alpha = 0.0
        }
        
        required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    }
}

// MARK: -
extension Transition.Animator.Image {
    
    func size(fromMultiplier multiplier: CGFloat) -> CGSize {
        let newWidth: CGFloat = frame.size.width * multiplier
        let newHeight: CGFloat = frame.size.height * multiplier
        return CGSize(width: newWidth, height: newHeight)
    }
}
