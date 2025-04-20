//
//  PokedexController.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 18/04/25.
//

import UIKit
import Combine

protocol PokedexViewProtocol: AnyObject {
    var interaction: AnyPublisher<PokedexView.Interaction, Never> { get }
    var viewModel: PokedexView.ViewModel { get }
}

// MARK: -
final class PokedexController: ViewController<PokedexView>, PokedexViewProtocol {
    
    // MARK: Private properties
    private let interactor: PokedexInteractable
    
    // MARK: - Public properties
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
    
    init(viewModel: PokedexView.ViewModel, interactor: PokedexInteractable) {
        self.interactor = interactor
        super.init(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = viewModel.title
        interactor.loadPokemon()
    }
}
