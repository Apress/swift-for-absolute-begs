//
//  ViewController.swift
//  RandomNumber
//
//  Created by Gary Bennett on 10/26/14.
//  Copyright (c) 2014 xcelMe. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var randomNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seed(sender: UIButton) {
        srandom(CUnsignedInt(time(nil)))
        randomNumber.text = "Generator seeded"
    }
   
 
    @IBAction func generate(sender: UIButton) {

        var generated = (random() % 100) + 1
        randomNumber.text = "\(generated)"
        
    }

}

