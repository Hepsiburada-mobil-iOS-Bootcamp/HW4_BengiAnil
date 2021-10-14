//
//  ContinentResponse.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation

// MARK: - ContinentElement
struct ContinentElement: Codable {
    let id: Int
    let name: String
}

typealias Continent = [ContinentElement]
