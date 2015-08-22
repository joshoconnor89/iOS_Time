//
//  ViewController.swift
//  Time
//
//  Created by Joshua O'Connor on 1/7/15.
//  Copyright (c) 2015 Joshua O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var timeLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func refreshTime(sender: AnyObject) {
        
        // get current date (includes time)
        let now = NSDate()
        
        // create date formatter, set to hours:minutes am/pm
        var formatter =  NSDateFormatter()
        formatter.dateFormat = "HH:mm a"
       // var currentTime = formatter.dateFormat
        
        // change label
        println(now);
        timeLabel.text = formatter.stringFromDate(now)
        
    }


}

