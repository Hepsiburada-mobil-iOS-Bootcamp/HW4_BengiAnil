//
//  ContinentsApiServiceProvider.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class ContinentsApiServiceProvider: ApiServiceProvider<BaseRequest> {
    
    static let url = "https://thronesapi.com/api/v2/Continents"
    
    init() {
        super.init(method: .get, baseUrl: Self.url)
    }

}

