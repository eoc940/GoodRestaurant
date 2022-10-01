//
//  UIViewController + Extension.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/08/20.
//

import Foundation
import UIKit

extension UIViewController {
    public func add(_ child: UIViewController, on view: UIView? = nil, activateConstraint: Bool = true) {
        let target: UIView = view ?? self.view

        addChild(child)
        
        target.addSubview(child.view)
        if activateConstraint {
            child.view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                child.view.leadingAnchor.constraint(equalTo: target.leadingAnchor, constant: 0),
                child.view.trailingAnchor.constraint(equalTo: target.trailingAnchor, constant: 0),
                child.view.topAnchor.constraint(equalTo: target.topAnchor, constant: 0),
                child.view.bottomAnchor.constraint(equalTo: target.bottomAnchor, constant: 0)
            ])
        }
        child.didMove(toParent: self)
    }
    
    public func remove() {
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
