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
        println("1")
        return 2
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: AnyObject? = tableView.dequeueReusableCellWithIdentifier("maincell", forIndexPath: indexPath);
        if !cell {
            cell = MainTableCell(style: UITableViewCellStyle.Default, reuseIdentifier: "maincell");
        }
        return cell as UITableViewCell;
    }
    
}
