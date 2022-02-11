//
//  MockNetworkManager.swift
//  StaffsDirectoryTests
//
//  Created by MAC on 11/02/22.
//

import Foundation
@testable import StaffsDirectory

class MockNetworkManager: Servicable {
    func get<T>(_ baseUrl: String, path: String, type: T.Type, completionHandler: @escaping (Result<[T], ServiceError>) -> Void) where T : Decodable {
        
        
        let bundle = Bundle(for:MockNetworkManager.self)
        
        guard let url = bundle.url(forResource:path, withExtension:"json"),
              let data = try? Data(contentsOf: url) else {
                  completionHandler(.failure(ServiceError.serviceNotAvailable))
                  
                  return
              }
        
        do {
            let decodedResopnce = try JSONDecoder().decode([T].self, from: data)
            completionHandler(.success(decodedResopnce))
            
        }catch {
            completionHandler(.failure(ServiceError.parsingFailed))
        }
        
    }
}

