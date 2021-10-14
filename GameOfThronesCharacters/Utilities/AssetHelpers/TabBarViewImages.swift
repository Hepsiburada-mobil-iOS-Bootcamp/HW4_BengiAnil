//
//  TabBarViewImages.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import UIKit

enum TabBarViewImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
        UIImage(imageLiteralResourceName: rawValue)
    }
    
    case characters = "characters"
    case charactersSelected = "charactersSelected"
    case continents = "continents"
    case continentsSelected = "continentsSelected"
}
