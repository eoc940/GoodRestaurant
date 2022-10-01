//
//  CoreInitTask.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation

func == (lhs: CoreTaskPack, rhs: CoreTaskPack) -> Bool {
    return lhs.task.myRank == rhs.task.myRank
}

func < (lhs: CoreTaskPack, rhs: CoreTaskPack) -> Bool {
    return lhs.task.myRank < rhs.task.myRank
}

struct CoreTaskPack: Comparable {
    let task: CoreTask
    let param: Any?
}

enum CoreTask: Int, Task {
    // Init시에 UI와 관련한 task job의 우선순위별로 기술
    // 아래 case는 샘플로 기술
    case rankCheckNetwork
    case rankCheckLogin
    case rankFinish
    
    var myRank: Int { return self.rawValue}
    var action: TaskActionable {
        switch self {
        case .rankCheckNetwork:
            return TaskCheckNetwork()
        case .rankCheckLogin:
            return TaskCheckLogin()
        case .rankFinish:
            return TaskFinish()
        }
    }
}

extension CoreTask {
    struct TaskCheckNetwork: TaskActionable {
        func runTask(param: Any?) {
            
        }
    }
    
    struct TaskCheckLogin: TaskActionable {
        func runTask(param: Any?) {
            
        }
    }
    
    struct TaskFinish: TaskActionable {
        func runTask(param: Any?) {
            
        }
    }
}
