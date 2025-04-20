//
//  UILabel.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

extension UILabel {
    static var accessoryView: UILabel {
        let label = UILabel()
        label.textColor = .white
        label.font = .pixel17
        label.text = ">"
        label.sizeToFit()
        return label
    }
}
