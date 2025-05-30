//
//  HorizontalPanGesture.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

final class HorizontalPanGesture: UIPanGestureRecognizer {
    
    // MARK: Private properties
    private var shouldDrag: Bool = false
    private var xTranslation: Int = 0
    
    // MARK: - Public functions
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesMoved(touches, with: event)
        
        guard state != .failed, let touch = touches.first else { return }
        
        let currentLocation = touch.location(in: view)
        let previousLocation = touch.previousLocation(in: view)
        
        xTranslation += Int(previousLocation.x - currentLocation.x)
        
        guard !shouldDrag else { return }
        
        if xTranslation != 0 {
            shouldDrag = true
        } else if xTranslation > 0 {
            state = .failed
        } else {
            shouldDrag = false
        }
    }
    
    override func reset() {
        super.reset()
        shouldDrag = false
        xTranslation = 0
    }
}
