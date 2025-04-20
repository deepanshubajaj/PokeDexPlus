//
//  PokemonRequest.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Networking

enum PokemonRequest: Requestable {
    case pokemon
    
    var endpoint: EndpointType { Endpoint.pokemon }
    var encoding: Request.Encoding { .query }
    var httpMethod: HTTP.Method { .get }
}
