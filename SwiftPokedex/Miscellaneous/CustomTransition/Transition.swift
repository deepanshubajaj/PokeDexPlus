//
//  Transition.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

final class Transition: NSObject {
    
    // MARK: Private properties
    private let interaction: InteractableTransition
    private let cell: UICollectionViewCell
    
    init(interaction: InteractableTransition, cell: UICollectionViewCell) {
        self.interaction = interaction
        self.cell = cell
        super.init()
    }
}

// MARK: -
extension Transition: UIViewControllerTransitioningDelegate {
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        Presentation(presentedViewController: presented, presenting: presenting)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        Animator(isPresenting: true, interaction: interaction, cell: cell)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        Animator(isPresenting: false, interaction: interaction, cell: cell)
    }
    
    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        guard interaction.interactionInProgress else { return nil }
        return interaction
    }
}
