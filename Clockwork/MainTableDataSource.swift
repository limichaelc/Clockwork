//
//  MainTableDataSource.swift
//  Clockwork
//
//  Created by Harry Smallbone on 19/07/2014.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import UIKit

class MainTableDataSource : NSObject, UITableViewDataSource {
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        return UITableViewCell()
    }
}
