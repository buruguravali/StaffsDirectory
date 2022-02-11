//
//  PeopleResponce.swift
//  StaffsDirectory
//
// Created by MAC on 11/02/22.
//

import Foundation

struct PeopleResponce: Decodable {
    
    var createdAt: String?
    var firstName: String?
    var avatar: String?
    var lastName: String?
    var email: String?
    var jobTitle: String?
    var favouriteColor: String?
    var id: String?
    
    enum CodingKeys: String, CodingKey{
        case createdAt,firstName,avatar,email,lastName,favouriteColor,id
        case jobTitle = "jobtitle"
    }
}
