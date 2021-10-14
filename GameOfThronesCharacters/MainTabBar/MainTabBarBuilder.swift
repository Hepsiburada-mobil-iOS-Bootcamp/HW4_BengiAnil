//
//  MainTabBarBuilder.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import UIKit

class MainTabBarBuilder {
    
    class func build() -> UIViewController {
        
        let characterViewController = CharacterListViewBuilder.build()
        let continentViewController = ContinentListViewBuilder.build()
    
        let tabBarViewController = MainTabBarController()
        tabBarViewController.viewControllers = [characterViewController, continentViewController]
        tabBarViewController.tabBar.backgroundColor = .systemBackground
        tabBarViewController.tabBar.tintColor = .black
        return tabBarViewController
    }
}
