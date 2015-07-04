//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Kevin Liao on 7/4/15.
//  Copyright (c) 2015 Kevin Liao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var started = false
    var timeToRestart = false
    
    @IBOutlet weak var timeDisplay: UILabel!
    @IBOutlet weak var stopOrResetButton: UIBarButtonItem!
    
    @IBAction func onStartPress(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    @IBAction func onStopOrResetPress(sender: AnyObject) {
        if timeToRestart {
            count = 0
            timeDisplay.text = String(count)

        } else {
            timer.invalidate()
            timeToRestart = true
            stopOrResetButton.title = "Reset"
        }
    }

    
    var timer = NSTimer()
    
    var count = 1
    
    func result(){
        println(count)
        timeDisplay.text = String(count)
        count += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeDisplay.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

