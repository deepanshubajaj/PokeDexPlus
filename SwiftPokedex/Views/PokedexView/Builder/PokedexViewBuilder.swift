//
//  PokedexViewBuilder.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit

final class PokedexViewBuilder {
    
    static func build() -> NavigationController {
        let router = PokedexRouter()
        let interactor = PokedexInteractor(router: router, service: .default)
        let viewController = PokedexController(viewModel: .init(), interactor: interactor)
        let navigationController = NavigationController(rootViewController: viewController)
        navigationController.setNavbarApp(color: .pokedexRed)
        MusicToggleButton.addMusicButton(to: viewController)
        interactor.view = viewController
        router.navigationController = navigationController
        return navigationController
    }
}
