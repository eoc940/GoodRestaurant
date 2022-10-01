//
//  ViewController.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/08/17.
//

import UIKit

// 지도 뷰를 로드하고 푸시 등의 이벤트를 처리하는 VC
class MainVC: UIViewController {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        showMap()
    }
}

extension MainVC {
    func bind() {
        
    }
}

extension MainVC {
    func showMap() {
        coordinator?.presentRandomPicture()
    }
}
