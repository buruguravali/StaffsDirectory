//
//  ServiceError.swift
//  StaffsDirectory
//
//  Created by MAC on 11/02/22.
//

import Foundation

enum ServiceError: Error {
    case serviceNotAvailable
    case parsingFailed
    case requestNotFormatted
}
