//
//  CustomTableViewProtocol.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import UIKit

protocol CustomTableViewProtocol: AnyObject {
    
    func getNumberOfSection() -> Int
    func getNumberOfRowsInSection(in section: Int) -> Int
    func getCellForRowAt(at index: Int) -> GenericDataProtocol?
}
