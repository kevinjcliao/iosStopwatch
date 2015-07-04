//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Kevin Liao on 7/4/15.
//  Copyright (c) 2015 Kevin Liao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    func result(){
        println(count)
        count += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

