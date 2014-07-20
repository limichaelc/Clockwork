//
//  Task.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//
//  The Task class takes the user-provided specifications about their tasks, which
//  is then used to generate a list of events
//

import Foundation
import UIKit
import EventKit
import EventKitUI
import MapKit

class Task {
    enum Priority {
        case Low, Medium, High
    }
    
    enum Color: Int {
        case Gray, Blue, Green, Yellow, Orange, Red
    }
    
    // Properties
    var name: String
    var color: Color
    var toSplit: Bool
    var priority: Priority
    var duration: NSTimeInterval?
    var location: MKMapItem?
    
    // Event: given a start and end date (no priority or duration)
    init(name: String, color: Color, startDate: NSDate, endDate: NSDate, location: MKMapItem) {
        self.name = name
        self.color = color
        self.toSplit = false
        self.priority = .Medium
        self.duration = endDate.timeIntervalSinceDate(startDate)
        self.location = location
    }
    
    // Task: given a priority and duration (no start or end date)
    init(name: String, color: Color, toSplit: Bool, priority: Priority, duration: NSTimeInterval, location: MKMapItem) {
        self.name = name
        self.color = color
        self.toSplit = toSplit
        self.priority = priority
        duration = endDate.timeIntervalSinceDate(startDate)
        self.location = location
    }
}