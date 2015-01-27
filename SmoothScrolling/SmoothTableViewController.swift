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

//        self.tableView.estimatedRowHeight = 100;
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

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 100;
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DynamicCell", forIndexPath: indexPath) as DynamicCell

        // Configure the cell...
        cell.topLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras iaculis neque non augue congue sagittis. Vivamus egestas fringilla libero, ac luctus metus imperdiet euismod. Curabitur scelerisque finibus leo auctor fermentum. Pellentesque urna est, tincidunt molestie felis in, finibus pharetra justo. Maecenas efficitur, ante quis varius commodo, eros arcu fermentum justo, id imperdiet neque erat nec risus. Suspendisse potenti. Vivamus in rutrum magna. Vivamus est nulla, pellentesque at tempus et, maximus posuere elit. In vel maximus erat. In porttitor rutrum posuere. Mauris id quam placerat, finibus ex eu, dignissim sapien.";
        cell.bottomLabel.text = "Fusce magna nibh, luctus vitae efficitur vel, euismod eget nisi. Duis magna metus, ultrices pretium ornare id, auctor ac sapien. Vivamus id imperdiet lorem, nec consectetur urna. Nullam elit lacus, sagittis at pellentesque convallis, rhoncus vitae mi. In sapien ipsum, cursus sit amet laoreet nec, interdum et est. Cras fringilla justo vehicula velit rhoncus, gravida finibus ante condimentum. Donec imperdiet diam vel ullamcorper vehicula. Quisque massa felis, convallis varius dignissim a, posuere eget arcu. Cras lacinia nulla nec velit ultricies accumsan ac rhoncus sem. Maecenas mi dui, auctor a massa ac, porttitor luctus tellus. Duis iaculis maximus arcu, at interdum urna faucibus vel. Vivamus vulputate quam metus, non consequat ante ultricies in. Cras quis dictum urna. Ut sed diam id quam varius porttitor.";
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showMe", sender: self)
        
    }
}
