//
//  LabelPackComponentData.swift
//  AppPermissions
//
//  Created by Bengi on 30.09.2021.
//

import UIKit

class LabelPackComponentData {
    
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var fullName: String
    private(set) var title: String
    private(set) var family: String

    init(firstName: String, lastName: String, fullName: String, title: String, family: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.title = title
        self.family = family
    }
}
