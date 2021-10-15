//
//  CharacterListViewModel.swift
//  GameOfThronesCharacters
//
//  Created by Bengi on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    private var data: CharacterDataResponse?
    private var state: CharacterListViewStateBlock?
    private let formatter: CharacterListDataFormatterProtocol

    init(formatter: CharacterListDataFormatterProtocol) {
        self.formatter = formatter
    }
    func subscribeState(completion: @escaping CharacterListViewStateBlock) {
        state = completion
    }
    
    func getCharacterList() {
        DispatchQueue.main.async {
            self.fireApiCall { [weak self] result in
                switch result {
                case .success(let response):
                    print("success: \(response)")
                case .failure(let error):
                    print("error: \(error)")
                }
            }
        }
    }
    
    func fireApiCall(with completion: @escaping (Result<CharactersResponse, ErrorResponse>) -> Void) {
        do {
            let urlRequest = try CharactersApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error: \(error)")
        }
    }
    
    func dataHandler(with response: CharacterDataResponse) {
        data = response
        state?(.done)
    }
    
    // MARK: - CallBack Listener
    private lazy var apiCallHandler: (Result<CharactersResponse, ErrorResponse>) -> Void = { [weak self] result in

         switch result {
         case .failure(let error):
             print("error : \(error)")
         case .success(let data):
             print("success")
         }
    }

}
extension CharacterListViewModel: CustomTableViewProtocol {
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumberOfRowsInSection(in section: Int) -> Int {
        guard let dataUnwrapped = data else { return 0 }
        return dataUnwrapped.data.results.count
    }
    
    func getCellForRowAt(at index: Int) -> GenericDataProtocol? {
        guard let dataUnwrapped = data else { return nil }
        return formatter.getItem(from: dataUnwrapped.data.results[index])
    }
}
