//
//  ViewController.swift
//  RadioStations
//
//  Created by Thorn on 10/28/14.
//  Copyright (c) 2014 inn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myStation: RadioStation
    
    @IBOutlet var stationName : UILabel!
    @IBOutlet var stationFrequency : UILabel!
    @IBOutlet var stationBand : UILabel!
    
    required init(coder aDecoder: NSCoder) {
        
        myStation = RadioStation()
        myStation.frequency=102.5
        myStation.name = "Knix"
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: AnyObject) {
        stationName.text = myStation.name
        stationFrequency.text = String(format:"%f", myStation.frequency)
        
        if myStation.frequency >= RadioStation.minFMFrequency() && myStation.frequency <= RadioStation.maxFMFrequency() {
            stationBand.text = "FM"
        } else {
            stationBand.text = "AM"
        }
        
    }

    
}

