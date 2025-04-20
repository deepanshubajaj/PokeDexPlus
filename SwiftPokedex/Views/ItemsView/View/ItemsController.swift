//
//  ItemsController.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 19/04/25.
//

import UIKit

final class ItemsController: ViewController<ItemsView> {
    
    // MARK: - Public properties
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
    
    // MARK: - Init
    override init(viewModel: ItemsView.ViewModel) {
        super.init(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.cleanTitle
    }
}
