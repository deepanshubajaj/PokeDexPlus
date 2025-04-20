//
//  ViewModable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

protocol ViewModable where Self: UIView {
    
    associatedtype ViewModel
    var viewModel: ViewModel! { get set }
    func setViewModel(_ viewModel: ViewModel)
}
