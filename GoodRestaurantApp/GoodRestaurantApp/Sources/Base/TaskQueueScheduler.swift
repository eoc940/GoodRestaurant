//
//  TaskQueueScheduler.swift
//  GoodRestaurantApp
//
//  Created by asher.enfj on 2022/10/01.
//

import Foundation
import SwiftPriorityQueue

struct QueueAction<T> where T: Task {
    let element: T
}

protocol TaskItemType where Element: Task {
    associatedtype Element
    var taskAction: QueueAction<Element> { get set }
}


class TaskQueueScheduler {
    static var instance = TaskQueueScheduler()
    
    var priorityQueue = PriorityQueue<CoreTaskPack>(ascending: true)
    var queuingTaskCache = [Int: Bool]()
    var runningTask: CoreTaskPack?
    
    init() {
        // Noticenter update
    }
    
    private func taskAction(task: CoreTaskPack?, param: Any?) {
        guard let task = task else { return }
        if self.runningTask != task {
            self.runningTask = task
            
            DispatchQueue.main.async {
                task.task.action.runTask(param: param)
            }
        }
    }
}
