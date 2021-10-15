//
//  CharactersResponse.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation

// MARK: - CharacterDataResponse
public struct CharacterDataResponse: Codable {
    let data: CharactersResponseModel
    
    init(data: CharactersResponseModel) {
        self.data = data
    }
    
}
// MARK: - CharactersResponseModel
struct CharactersResponseModel: Codable {
    let results: [CharactersResponse]
    init(results: [CharactersResponse]) {
        self.results = results
    }
}

// MARK: - CharactersResponse
struct CharactersResponse: Codable {
    let id: Int?
    let firstName, lastName, fullName, title: String?
    let family, image: String?
    let imageURL: String?

    enum CodingKeys: String, CodingKey {
        case id, firstName, lastName, fullName, title, family, image
        case imageURL = "imageUrl"
    }
}
 //typealias Character = [CharactersResponse]
