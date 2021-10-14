//
//  GameOfThronesCharactersResponse.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation

// MARK: - CharacterElement
struct CharacterElement: Codable {
    let id: Int
    let firstName, lastName, fullName, title: String
    let family, image: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case id, firstName, lastName, fullName, title, family, image
        case imageURL = "imageUrl"
    }
}

typealias Character = [CharacterElement]


