//
//  MainTableCell.swift
//  Clockwork
//
//  Created by Harry Smallbone on 19/07/2014.
//  Copyright (c) 2014 The Traveling Salespeople. All rights reserved.
//

import UIKit

class MainTableCell : UITableViewCell {
    @IBOutlet var dateLabel: UILabel;
    @IBOutlet var eventLabel: UILabel;
    
    init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
    }
    
    override func prepareForReuse()  {
        dateLabel.text = "9/11"
        eventLabel.text = "sample text"
    }
}
