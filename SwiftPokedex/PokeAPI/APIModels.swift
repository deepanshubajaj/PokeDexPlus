//
//  APIModels.swift
//  SwiftPokedex
//
//  Created by Deepanshu Bajaj on 20/04/25.
//

import Networking

struct APIResponse: Decodable {
    let next: String
    let results: [APIItem]
}

// MARK: -
struct APIItem: Decodable {
    let name: String
    let url: String
}

// MARK: -
extension Network.Service {
    static var `default`: Network.Service {
        Network.Service(server: ServerConfig(baseURL: "\(APIPaths.baseUrl)"))
    }
}
