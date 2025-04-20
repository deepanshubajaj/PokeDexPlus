//
//  ViewController.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit
import Combine

class ViewController<View>: UIViewController where View: ViewModable & Interactable {
    
    // MARK: Public properties
    var interaction: AnyPublisher<View.Interaction, Never> { nib.interaction }
    var viewModel: View.ViewModel { nib.viewModel }
    
    /// The nib for the view
    private(set) var nib: View
    
    init(viewModel: View.ViewModel) {
        self.nib = View.instanceFromNib()
        self.nib.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Life cycle
    override func loadView() {
        view = nib
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = ""
    }
}
