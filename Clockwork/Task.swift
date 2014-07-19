//
//  Task.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import Foundation

class Task {
    enum Priority {
        case Low, Medium, High
    }
    
    let createdAt: NSDate = NSDate.date()
    var name: String
    var location: String
    var date: NSDate
    var starttime: NSDate
    var endtime: NSDate
    var priority: Priority
    var duration: NSTimeInterval
    
}