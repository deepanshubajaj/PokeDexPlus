//
//  DataSources.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import UIKit

typealias DiffableDataSource = UICollectionViewDiffableDataSource
typealias Snapshot = NSDiffableDataSourceSnapshot

// MARK: -
extension UICollectionView {
    
    typealias SearchDataSource = DiffableDataSource<PokedexView.Section, PokedexView.Item>
    
    func pokedexDataSource(data: [PokemonDetails], delegate del: UICollectionViewDelegate) -> SearchDataSource {
        setCollectionViewLayout(.pokedexLayout, animated: false)
        registerFooterView(SpinnerFooterView.self)
        registerCell(PokedexCell.self)
        delegate = del
        
        let dataSource = SearchDataSource(collectionView: self) { collectionView, indexPath, pokemon in
            let cell = collectionView.dequeueCell(PokedexCell.self, at: indexPath)
            cell.titleLabel.text = pokemon.name.capitalized
            cell.indexLabel.text = "#\(pokemon.id)"
            
            ImageCache.default.loadImage(from: pokemon.sprite.url, item: pokemon) { fetchedPokemon, image in
                guard let currentPokemon = fetchedPokemon as? PokemonDetails, currentPokemon == pokemon else { return }
                cell.setupImage(image)
            }
            return cell
        }
        
        dataSource.supplementaryViewProvider = { _, _, indexPath in
            self.dequeueFooterView(SpinnerFooterView.self, at: indexPath)
        }
        
        var snapshot = Snapshot<PokedexView.Section, PokedexView.Item>()
        snapshot.appendSections(["main"])
        snapshot.appendItems(data)
        dataSource.apply(snapshot)
        return dataSource
    }
}
