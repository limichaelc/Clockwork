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
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //TODO: actually reuse
        return MainTableCell(style: .Default, reuseIdentifier: "maincell")
    }
}

