//
//  FirstViewController.swift
//  Clockwork
//
//  Created by Michael Li on 7/19/14.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder);
    }
    
    init(style: UITableViewStyle) {
        super.init(style: style);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: AnyObject? = tableView.dequeueReusableCellWithIdentifier("maincell", forIndexPath: indexPath)
        if !cell {
            cell = MainTableCell(style: .Default, reuseIdentifier: "maincell")
        }
        (cell as MainTableCell).prepare()
        return cell as UITableViewCell
    }
}

