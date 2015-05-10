//
//  ViewController.swift
//  Click Counter
//
//  Created by Jon Gordon on 10/05/2015.
//  Copyright (c) 2015 JonGor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label1:UILabel!
    var label2:UILabel!
    var toggle:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Label 1
        var label1 = UILabel()
        label1.frame = CGRectMake(150, 150, 60, 60)
        label1.text = "0"

        self.view.addSubview(label1)

        self.label1 = label1


        // Label 2
        var label2 = UILabel()
        label2.frame = CGRectMake(220, 150, 60, 60)
        label2.text = "0"

        self.view.addSubview(label2)

        self.label2 = label2


        // Button Increment
        var button1 = UIButton()
        button1.frame = CGRectMake(150, 250, 100, 60)
        button1.setTitle("Increment", forState: .Normal)
        button1.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button1)

        button1.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)


        // Button Decrement
        var button2 = UIButton()
        button2.frame = CGRectMake(250, 250, 100, 60)
        button2.setTitle("Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button2)

        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)


        // Button Toggle
        var button3 = UIButton()
        button3.frame = CGRectMake(150, 350, 120, 60)
        button3.setTitle("Toggle Colour", forState: .Normal)
        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button3)

        button3.addTarget(self, action: "toggleColour", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        updateLabels()
    }

    func decrementCount() {
        self.count--
        updateLabels()
    }

    func updateLabels() {
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }

    func toggleColour() {
        if toggle {
            self.view.backgroundColor = UIColor.whiteColor()
            toggle = false
        } else {
            self.view.backgroundColor = UIColor.grayColor()
            toggle = true
        }
    }
}

