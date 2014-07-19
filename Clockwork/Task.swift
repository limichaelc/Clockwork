//
//  Task.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
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
    var chunkable: Bool
    var priority: Priority
//    var duration: NSTimeInterval?
//    var location: MKMapItem?
    
    // array of all allocated chunks of time
    // populated based on the settings provided above
    /* contains properties for:
        title
        startDate and endDate
        associated calendar
        alarms
        recurrenceRules */
//    var events: [EKEvent]
    
    init() {
        name = "temp"
        color = .Gray
        chunkable = false
        priority = .Medium
//        duration = NSTimeInterval(10)
//        location = nil
//        events = EKEvent(
        
    }
}