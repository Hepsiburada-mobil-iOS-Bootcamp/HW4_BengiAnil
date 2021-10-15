//
//  CharacterListViewController.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    private var tableView: CustomTableView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addMTableView()
        subscribeViewModelListeners()
        viewModel.getCharacterList()
    }
    
    func addMTableView() {
        tableView = CustomTableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = viewModel
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    private func subscribeViewModelListeners() {
        viewModel.subscribeState { [weak self] state in
            switch state {
            case .done:
                print("Data is ready.")
                self?.tableView.reloadTableView()
            case .loading:
                print("Data is getting.")
            case .failure:
                print("Error")
            }
        }
    }
}
