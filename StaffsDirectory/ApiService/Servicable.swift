//
//  Servicable.swift
//  StaffsDirectory
//
//  Created by MAC on 11/02/22.
//

import Foundation

protocol Servicable {
    func get<T:Decodable>(_ baseUrl:String, path:String, type:T.Type, completionHandler:@escaping(Result<[T],   ServiceError>)->Void)
}
