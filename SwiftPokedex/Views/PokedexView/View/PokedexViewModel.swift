//
//  PokedexViewModel.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit

extension PokedexView {
    
    final class ViewModel {
        @Published var pokemon = [PokemonDetails]()
        @Published var state: State = .idle
        
        enum State {
            case idle, loading
        }
    }
}

// MARK: -
extension PokedexView.ViewModel {
    var title: String { "PokeDex+" }
}
