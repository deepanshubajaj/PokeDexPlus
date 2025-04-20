//
//  PokedexRouter.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit

protocol PokedexRoutable: Routable {
    func routeToDetailView(withPokemonContainer container: PokemonContainer)
}

// MARK: -
final class PokedexRouter: PokedexRoutable {
    
    // MARK: Public properties
    weak var navigationController: UINavigationController?
    
    // MARK: - Public functions
    func routeToDetailView(withPokemonContainer container: PokemonContainer) {
        let detailView = DetailBuilder.build(fromContainer: container)
        navigationController?.present(detailView, animated: true)
    }
}
