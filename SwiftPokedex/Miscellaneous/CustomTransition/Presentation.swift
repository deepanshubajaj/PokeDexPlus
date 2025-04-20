//
//  PresentationController.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

extension Transition {
    
    final class Presentation: UIPresentationController {
        
        // MARK: Private properties
        private lazy var fadeView: UIView = {
            let view = UIView(useAutolayout: true)
            view.backgroundColor = .black
            view.alpha = 0.0
            return view
        }()
        
        // MARK: - Public properties
        static let finalAlpha: CGFloat = 0.6
        
        // MARK: - Public functions
        func setAlpha(_ alpha: CGFloat) {
            fadeView.alpha = alpha
        }
    }
}

// MARK: - UIPresentationController delegate
extension Transition.Presentation {
    
    override func presentationTransitionWillBegin() {
        guard let container = containerView else { return }
        
        container.addSubview(fadeView)
        fadeView.pinToSuperview()
    }
    
    override func dismissalTransitionWillBegin() {
        guard let coordinator = presentedViewController.transitionCoordinator, !coordinator.isInteractive else {
            fadeView.alpha = 0.0
            return
        }
        
        coordinator.animate { _ in
            self.fadeView.alpha = 0.0
        }
    }
}
