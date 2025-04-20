//
//  NavigationController.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

final class NavigationController: UINavigationController, PresentableView {
    
    // MARK: Public properties
    var transitionManager: UIViewControllerTransitioningDelegate?
    
    var receivingFrame: CGRect? {
        guard let detailView = topViewController as? DetailController else { return nil }
        return detailView.nib.tableView.tableHeaderView?.frame
    }
}

// MARK: -
extension NavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle { visibleViewController?.preferredStatusBarStyle ?? super.preferredStatusBarStyle }
    override var childForStatusBarStyle: UIViewController? { visibleViewController }
}

// MARK: -
extension UINavigationController {
    
    func setNavbarApp(color: UIColor) {
        let attributes: [NSAttributedString.Key: Any] = [.font: UIFont.pixel17, .foregroundColor: color.isLight ? UIColor.black : UIColor.white]
        UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = attributes
        appearance.backgroundColor = color
        appearance.shadowColor = .clear
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().isTranslucent = false
    }
}
