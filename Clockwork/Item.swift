//
//  Item.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//
//  The Item class dynamically switches between a task and event depending on
//  whether or not a start and end time has been associated with it. An event
//  is defined as an item that has a specified start and end time, and can be
//  directly specified by the user, or automatically assigned based on the
//  optimization algorithm. Tasks are all yet-to-be-scheduled items. The distinction
//  exists to help with efficiency of optimization.
//

import Foundation
import UIKit
import EventKit
import EventKitUI
import MapKit

class Item {
    /*enum Priority {
        case Low, Medium, High
    }
    
    enum Color: Int {
        case Gray, Blue, Green, Yellow, Orange, Red
    }
    
    enum ItemType {
        case Task, Event
    }
    
    // Properties
    let type: ItemType
    let dateSet: NSDate // automatically set
    var name: String
    var color: Color
    var toSplit: Bool?
    var priority: Priority?
    var duration: NSTimeInterval?
    var location: MKMapItem?
    var deadline: NSDate
    weak var doBefore: Item?
    weak var doAfter: Item?
    var notes: String
    var recurrenceRules: EKRecurrenceRule?
    
    var events: [EKEvent] = [EKEvent]() // list of calendar events generated from above properties
    
    
    // Event: given a start and end date (no priority or duration)
    init(name: String, color: Color, startDate: NSDate, endDate: NSDate, location: MKMapItem, notes: String) {
        self.type = .Event
        self.dateSet = NSDate.date()
        self.name = name
        self.color = color
        self.toSplit = false
        self.priority = Item.Priority.Medium
        self.duration = endDate.timeIntervalSinceDate(startDate)
        self.location = location
        self.notes = notes
    }
    
    // Item: given a priority and duration (no start or end date)
    init(name: String, color: Color, toSplit: Bool, priority: Priority, duration: NSTimeInterval, deadline: NSDate, location: MKMapItem) {
        self.type = .Task
        self.dateSet = NSDate.date()
        self.name = name
        self.color = color
        self.toSplit = toSplit
        self.priority = priority
        self.duration = duration
        self.deadline = deadline
        self.location = location
        self.notes = notes
    }*/
}