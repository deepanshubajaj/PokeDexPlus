//
//  ItemDetailRequest.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Networking

enum ItemDetailRequest: Requestable {
    case item(String)
    
    var encoding: Request.Encoding { .query }
    var httpMethod: HTTP.Method { .get }
    
    var endpoint: EndpointType {
        switch self {
        case .item(let id): return Endpoint.itemDetails(id)
        }
    }
}
