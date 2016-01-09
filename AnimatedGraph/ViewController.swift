//
//  ViewController.swift
//  AnimatedGraph
//
//  Created by siva kongara on 1/8/16.
//  Copyright © 2016 siva kongara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: NSTimer?
    let progView = ProgressView()
    var percentOnGraph: Double = 0
    
    func drawCircle() {
        percentOnGraph = percentOnGraph + 0.01
        progView.percentOnGraph = percentOnGraph
        if percentOnGraph > 1 {
            timer!.invalidate()
        }
        progView.drawRect(view.frame)
        view.setNeedsDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.grayColor()
        progView.frame = view.frame
        progView.bounds = view.bounds
        view.addSubview(progView)
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: "drawCircle", userInfo: nil, repeats: true)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

