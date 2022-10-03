//
//  RandomPictureVC.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation
import UIKit
import RxSwift
import SnapKit

class RandomPictureVC: UIViewController {
    
    weak var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bind()
    }
}

extension RandomPictureVC {
    func bind() {
        
    }
}
