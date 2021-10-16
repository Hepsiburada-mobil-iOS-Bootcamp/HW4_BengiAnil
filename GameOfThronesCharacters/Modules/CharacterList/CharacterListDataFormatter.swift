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
            labelInfo: LabelPackComponentData(fullName: data.fullName,
                                            title: data.title,
                                            family: data.family),
            imageInfo: CustomImageViewComponentData(imageUrl: data.imageURL))
    }
}
