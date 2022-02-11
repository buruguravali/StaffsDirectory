//
//  RoomsResponce.swift
//  StaffsDirectory
//
//  Created by MAC on 11/02/22
//

import Foundation

struct RoomsResponce: Decodable {
    var createdAt: String
    var isOccupied: Bool
    var maxOccupancy: Int
    var id: String
}
