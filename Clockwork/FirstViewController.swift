//
//  FirstViewController.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import UIKit

class FirstViewController: UITableView {
    init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.dataSource = MainTableDataSource()
        self.delegate = MainTableViewDelegate()
    }
}

