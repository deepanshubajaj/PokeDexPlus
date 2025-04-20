//
//  InteractableTransition.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

protocol InteractableTransition: UIViewControllerInteractiveTransitioning {
    var interactionInProgress: Bool { get }
    var initialFrame: CGRect { get }
    var image: UIImage? { get }
}
