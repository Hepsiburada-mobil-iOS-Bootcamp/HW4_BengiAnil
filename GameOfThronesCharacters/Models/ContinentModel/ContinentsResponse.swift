//
//  ContinentsResponse.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation

// MARK: - ContinentsResponse
struct ContinentsResponse: Codable {
    let id: Int
    let name: String
}

typealias Continent = [ContinentsResponse]
