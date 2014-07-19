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

class Task {
    enum Priority {
        case Low, Medium, High
    }
    
    enum Color: Int {
        case Gray, Blue, Green, Yellow, Orange, Red
    }
    
    // Properties
    var name: String
    var events: [EKEvent] // array of all allocated chunks of time
    /* contains properties for:
        title
        startDate and endDate
        associated calendar
        alarms
        recurrenceRules */
    
    var location: [MKMapItem]
    var color: Color
    var priority: Priority
    var duration: NSTimeInterval
    var chunkable: Bool
    
}