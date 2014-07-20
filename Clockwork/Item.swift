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

enum ItemType {
    case Task, Event
}

class Item: NSObject {
    enum Priority {
        case Low, Medium, High
    }
    
    enum Color: Int {
        case Gray, Blue, Green, Yellow, Orange, Red
    }
    
    // Properties
    let type: ItemType
    let dateSet: NSDate? // automatically set
    var name: String
    var category: String
    var color: Color
    var isSplitable: Bool?
    var priority: Priority?
    var bufferTime: NSTimeInterval?
    var duration: NSTimeInterval?
    var location: MKMapItem?
    var startDate: NSDate?
    var endDate: NSDate?
    var deadline: NSDate
    weak var doBefore: Item?
    weak var doAfter: Item?
    var notes: String
    var recurrenceRules: EKRecurrenceRule?
    
    var events: [EKEvent] = [EKEvent]() // list of calendar events generated from above properties
    
    init(type: ItemType, name: String, color: Color, startDate: NSDate, endDate: NSDate, isSplitable: Bool = false, priority: Priority, duration: NSTimeInterval, location: MKMapItem, deadline: NSDate, notes: String) {
        super.init()
        if self != nil {
            self.type = type
            self.dateSet = NSDate()
            self.name = name
            self.color = color
            self.startDate = startDate
            self.endDate = endDate
            self.isSplitable = isSplitable
            self.priority = priority
            self.duration = endDate.timeIntervalSinceDate(startDate)
            self.location = location
            self.deadline = deadline
            self.notes = notes
        }
    }
}