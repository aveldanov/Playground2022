//
//  Image.swift
//  CollectionViewApp
//
//  Created by Anton Veldanov on 9/10/21.
//

import Foundation

struct APIResponse: Codable {
    let results: [ResultResponse]
}

struct ResultResponse: Codable {
    let urls: URLS
}

struct URLS: Codable {
    let full: String
}
