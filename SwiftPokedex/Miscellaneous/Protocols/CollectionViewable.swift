//
//  CollectionViewable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

protocol CollectionViewable where Self: UIView {
    associatedtype Section: Hashable
    associatedtype Item: Hashable
    
    var dataSource: DiffableDataSource<Section, Item>! { get }
    var collectionView: UICollectionView { get }
}
