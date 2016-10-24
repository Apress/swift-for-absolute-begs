//
//  ViewController.swift
//  Chapter6
//
//  Created by Brad Lees on 10/19/14.
//  Copyright (c) 2014 Brad Lees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logMessage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logMessage() {
        let hello = "Hello World!"
        println(hello)
        
        let myHelloWorld = HelloWorld()
        myHelloWorld.logMessage()
        
    }

}

