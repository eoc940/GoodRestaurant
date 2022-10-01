//
//  Task.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation

protocol Task {
    var action: TaskActionable { get }
    var myRank: Int { get }
}

protocol TaskActionable {
    func runTask(param: Any?)
}
