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
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"

        self.view.addSubview(label)

        self.label = label

        // Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)

        self.view.addSubview(button)

        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
}

