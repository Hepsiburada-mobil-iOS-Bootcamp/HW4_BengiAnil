//
//  CharacterListOperationsManager.swift
//  UIComponents
//
//  Created by Bengi on 13.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage
import RxSwift

typealias CharacterListResult = Result<CharactersResponse, ErrorResponse>
typealias CharacterListResultBlock = (Result<CharactersResponse, ErrorResponse>) -> Void

class CharacterListOperationsRxManager: CharacterListOperationsRxProtocol {
    
    public static let shared = CharacterListOperationsRxManager()
    
    private let dataPublishSubject = PublishSubject<CharacterListResult>()
    private let dataFlowSubject = PublishSubject<Bool>()

    
    func subscribeDataPublisher(with completion: @escaping CharacterListResultBlock) -> Disposable {
        return dataPublishSubject.subscribe(onNext: completion)
    }
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable {
        return dataFlowSubject.subscribe(onNext: completion)
    }
}
