//
//  RandomPictureCoordinator.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation
import UIKit

class RandomPictureCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let randomPictureVC = RandomPictureVC()
        randomPictureVC.coordinator = self
        navigationController.viewControllers.last?.add(randomPictureVC)
    }
}


