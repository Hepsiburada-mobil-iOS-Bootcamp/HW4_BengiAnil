//
//  CharacterListDataFormatter.swift
//  UIComponents
//
//  Created by Bengi on 10.10.2021.
//

import Foundation
import UIKit

class CharacterListDataFormatter: CharacterListDataFormatterProtocol {
  
    func getItem(from data: CharactersResponse) -> CustomTableViewCellData {
        
        return CustomTableViewCellData(
            labelInfo: LabelPackComponentData(firstName: getDescription(from: data.firstName),
                                              lastName: getDescription(from: data.lastName),
                                              fullName: getDescription(from: data.fullName),
                                              title: getDescription(from: data.title),
                                              family: getDescription(from: data.family)),
            imageInfo: CustomImageViewComponentData(imageUrl: getDescription(from: data.imageURL)))
    }
    
    
    private func getDescription(from rawValue: String?) -> String {
        guard let value = rawValue, !value.isEmpty else {
            return "Unknown"
        }
        return value

    }
}
