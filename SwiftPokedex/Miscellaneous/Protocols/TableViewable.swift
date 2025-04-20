//
//  TableViewable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import UIKit

protocol TableViewable where Self: UIView {
    
    associatedtype Section: Hashable
    associatedtype Item: Hashable
    
    var dataSource: UITableViewDiffableDataSource<Section, Item>! { get }
    var tableView: UITableView { get }
}
