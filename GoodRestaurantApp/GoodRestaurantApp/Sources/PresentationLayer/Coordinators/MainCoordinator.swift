//
//  MapCoordinator.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/08/20.
//



import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    let rootViewController: UIViewController
    
    init(navigationController: UINavigationController, rootViewController: UIViewController) {
        self.navigationController = navigationController
        self.rootViewController = rootViewController
    }

    func start() {
        let mainVC = MainVC()
        mainVC.coordinator = self
        rootViewController.add(mainVC)
    }
    
    func presentMap() {
        let mapCoordinator = MapCoordinator(navigationController: navigationController)
        childCoordinators.append(mapCoordinator)
        mapCoordinator.parentCoordinator = self
        mapCoordinator.start()
    }
    
    func presentRandomPicture() {
        let randomPictureCoordinator = RandomPictureCoordinator(navigationController: navigationController)
        childCoordinators.append(randomPictureCoordinator)
        randomPictureCoordinator.parentCoordinator = self
        randomPictureCoordinator.start()
    }
    
    
    
}
