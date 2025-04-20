//
//  UINib+Extensions.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

extension UINib {
    
    convenience init(view: UIView.Type) {
        self.init(nibName: view.identifier, bundle: nil)
    }
}
