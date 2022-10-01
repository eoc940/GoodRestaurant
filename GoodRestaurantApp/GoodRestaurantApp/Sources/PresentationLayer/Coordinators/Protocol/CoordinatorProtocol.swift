//
//  CoordinatorProtocol.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/08/17.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
