//
//  CustomTableViewCellData.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation

class CustomTableViewCellData: GenericDataProtocol {
    
    private(set) var labelInfo: LabelPackComponentData
    private(set) var imageInfo: CustomImageViewComponentData

    init(labelInfo: LabelPackComponentData, imageInfo: CustomImageViewComponentData) {
        self.labelInfo = labelInfo
        self.imageInfo = imageInfo
    }
}
