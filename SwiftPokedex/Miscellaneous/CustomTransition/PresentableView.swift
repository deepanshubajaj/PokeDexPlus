//
//  PresentableView.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

protocol PresentableView: UIViewController {
    var transitionManager: UIViewControllerTransitioningDelegate? { get }
    var receivingFrame: CGRect? { get }
}
