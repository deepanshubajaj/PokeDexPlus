//
//  Endpoints.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Networking

enum Endpoint {
    case itemDetails(String)
    case details(String)
    case pokemon
    case items
}

// MARK: -
extension Endpoint: EndpointType {
    
    var path: String {
        switch self {
        case .itemDetails(let id): return "item/\(id)"
        case .details(let id): return "pokemon/\(id)"
        case .pokemon: return "pokemon"
        case .items: return "item"
        }
    }
}
