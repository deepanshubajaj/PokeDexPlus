//
//  Interactable.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 21/04/25.
//

import Combine

protocol Interactable {
    associatedtype Interaction
    var interaction: AnyPublisher<Interaction, Never> { get }
}
