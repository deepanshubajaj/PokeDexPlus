//
//  SceneDelegate.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: scene)
        
        let splashVC = SplashViewController()
        
        // Callback to switch from splash screen to TabBarController
        splashVC.showTabBarController = { [weak self] in
            let tabBarController = TabBarController()
            self?.window?.rootViewController = tabBarController
        }
        
        window?.rootViewController = splashVC
        window?.makeKeyAndVisible()
    }
}

