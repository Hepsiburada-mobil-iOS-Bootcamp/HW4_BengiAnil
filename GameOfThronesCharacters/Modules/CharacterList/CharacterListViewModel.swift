//
//  CharacterListViewModel.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    deinit {
        print("DEINIT: CharacterListViewModel")
    }
    
    private var data: [CharactersResponse]?
    private var state: CharacterListViewStateBlock?
    private let formatter: CharacterListDataFormatterProtocol

    init(formatter: CharacterListDataFormatterProtocol) {
        self.formatter = formatter
    }
    func subscribeState(completion: @escaping CharacterListViewStateBlock) {
        state = completion
    }
    
    func getCharacterList() {
        state?(.loading)
        fireApiCall(with: apiCallHandler)
    }
    
    private func fireApiCall(with completion: @escaping (Result<[CharactersResponse], ErrorResponse>) -> Void) {        
        do {
            let urlRequest = try CharactersApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error : \(error)")
        }
    }
    
    // MARK: - CallBack Listener
    private lazy var apiCallHandler: (Result<[CharactersResponse], ErrorResponse>) -> Void = { [weak self] result in
         switch result {
         case .failure(let error):
             print("error : \(error)")
         case .success(let response):
            print("success: \(response)")
             self?.data = response
         }
        self?.state?(.done)
    }
}

extension CharacterListViewModel: CustomTableViewProtocol {
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumberOfItem(in section: Int) -> Int {
        // return 0
        guard let dataUnwrapped = data else { return 0 }
        return dataUnwrapped.count
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        // return nil
        guard let dataUnwrapped = data else { return nil }
        return formatter.getItem(from: dataUnwrapped[index])
    }
}
