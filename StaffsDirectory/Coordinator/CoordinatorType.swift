//
//  CoordinatorType.swift
//  StaffsDirectory
//
//  Created by MAC on 11/02/22.
//

import Foundation
import UIKit

protocol CoordinatorType: AnyObject {
    var navController: UINavigationController { get set }
    func start()
}
