//
//  DetailRequest.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Networking

enum DetailRequest: Requestable {
    case details(String)
    
    var encoding: Request.Encoding { .query }
    var httpMethod: HTTP.Method { .get }
    
    var endpoint: EndpointType {
        switch self {
        case .details(let id): return Endpoint.details(id)
        }
    }
}
