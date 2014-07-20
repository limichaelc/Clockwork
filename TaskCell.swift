//
//  TaskCell.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//
//  A custom cell used for displaying tasks in the task list
//

import UIKit

class TaskCell: UITableViewCell {
    // MARK: Properties
    
    @IBOutlet var label: UILabel
    @IBOutlet var listColor: UIView
    
    // MARK: Reuse
    
    override func prepareForReuse() {
        label.text = ""
        listColor.backgroundColor = UIColor.clearColor()
    }
}
