//
//  CharacterListViewBuilder.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import UIKit

class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        
        let viewModel = CharacterListViewModel()
        let viewController = CharacterListViewController(viewModel: viewModel)
        
        viewController.title = "Characters"
        viewController.tabBarItem.image = TabBarViewImages.characters.value
        viewController.tabBarItem.selectedImage = TabBarViewImages.charactersSelected.value
        
        return viewController
    }
}
