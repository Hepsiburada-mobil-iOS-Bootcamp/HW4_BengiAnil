//
//  CharactersApiServiceProvider.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharactersApiServiceProvider: ApiServiceProvider<BaseRequest> {
    
    static let url = "https://thronesapi.com/api/v2/Characters"
    
    init() {
        super.init(method: .get, baseUrl: Self.url)
    }
}
