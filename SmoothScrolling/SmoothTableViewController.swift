//
//  SmoothTableViewController.swift
//  SmoothScrolling
//
//  Created by Glen Tregoning on 1/21/15.
//  Copyright (c) 2015 Indiegogo. All rights reserved.
//

import UIKit

class SmoothTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // we can't have an accurate estimated row height
        self.tableView.estimatedRowHeight = 100;
        self.tableView.rowHeight = UITableViewAutomaticDimension;
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        self.tableView.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DynamicCell", forIndexPath: indexPath) as DynamicCell
        cell.topLabel.text = randomString(Int(arc4random_uniform(1000)));
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showMe", sender: self)
    }
    
    func randomString(length: NSInteger) -> NSString {
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ                    "
        let string = NSMutableString(capacity: length)
        for index in 1...length {
            string.appendFormat("%C", letters.characterAtIndex(Int(arc4random_uniform(UInt32(letters.length)))))
        }
        return string
    }
}
