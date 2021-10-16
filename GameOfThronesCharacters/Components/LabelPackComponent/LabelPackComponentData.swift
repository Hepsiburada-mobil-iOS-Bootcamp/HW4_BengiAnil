//
//  LabelPackComponentData.swift
//  AppPermissions
//
//  Created by Bengi on 30.09.2021.
//

import UIKit

class LabelPackComponentData {
    
    private(set) var fullName: String
    private(set) var title: String
    private(set) var family: String

    init(fullName: String, title: String, family: String) {
        
        self.fullName = fullName
        self.title = title
        self.family = family
    }
}
