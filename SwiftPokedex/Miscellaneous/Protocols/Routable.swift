//
//  Routable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

@objc protocol Routable: AnyObject {
    
    weak var navigationController: UINavigationController? { get }
}
