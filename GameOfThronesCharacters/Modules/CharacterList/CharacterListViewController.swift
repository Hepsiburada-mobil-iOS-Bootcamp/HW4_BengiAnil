//
//  CharacterListViewController.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    
    private var containerView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var firstName: LabelPackComponent = {
        let firstName = LabelPackComponent()
        firstName.translatesAutoresizingMaskIntoConstraints = false
        //firstName.labelPackAttributes().text = "Sansa"
        return firstName
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        setupContainerViewLayers()
        addMainComponents()
    }
    
    func addMainComponents() {
        view.addSubview(containerView)
        containerView.addSubview(firstName)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            firstName.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            firstName.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            firstName.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            firstName.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60),

        ])
    }
    
    private func setupContainerViewLayers() {
        containerView.layer.cornerRadius = 10
        containerView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
}
