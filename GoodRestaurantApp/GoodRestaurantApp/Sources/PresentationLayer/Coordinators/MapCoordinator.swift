//
//  MapCoordinator.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/08/21.
//

import Foundation
import UIKit

class MapCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mapVC = MapVC()
        mapVC.coordinator = self
        navigationController.viewControllers.last?.add(mapVC)
    }
}
