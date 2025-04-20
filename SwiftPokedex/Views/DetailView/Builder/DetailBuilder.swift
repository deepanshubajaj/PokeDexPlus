//
//  DetailBuilder.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit

final class DetailBuilder {
    
    static func build(fromContainer container: PokemonContainer) -> NavigationController {
        let color = container.cell.backgroundColor ?? .clear
        let viewModel = DetailView.ViewModel(pokemon: container.pokemon, color: color)
        let detailView = DetailController(viewModel: viewModel)
        let navigationController = NavigationController(rootViewController: detailView)
        let interaction = Transition.Interaction(viewController: navigationController, cell: container.cell, image: container.image)
        let transitionManager = Transition(interaction: interaction, cell: container.cell)
        navigationController.transitioningDelegate = transitionManager
        navigationController.transitionManager = transitionManager
        navigationController.modalPresentationStyle = .custom
        navigationController.setNavbarApp(color: color)
        return navigationController
    }
}
