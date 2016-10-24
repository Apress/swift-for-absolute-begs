//
//  AppDelegate.swift
//  Comparison
//
//  Created by Brad Lees on 10/6/14.
//
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //NSLog("Hello World");
        
        var i=5
        var y=6
        NSLog("The result is %@", (y>i ? "True" : "False"))
        
        var totalSpent = 31
        var discountThreshhold = 30;
        var discountPercent = 0
        var clubMember = true;
        
        discountThreshhold=30;
        discountPercent=0;
        
        if totalSpent > discountThreshhold && clubMember {
            discountPercent=15;
        }
        
//Today's Date
var today:NSDate = NSDate()

//Sale Date as of 12/4/2014
let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
let d = dateFormatter.dateFromString("2014-12–04")
let timeToAdd:NSTimeInterval = 60*60*24*1;
var saleDate:NSDate =  today.dateByAddingTimeInterval(timeToAdd);

var saleStarted = false
let result:NSComparisonResult  = today.compare(saleDate)

switch result {
case NSComparisonResult.OrderedAscending:
	//Sale Date is in the future
	saleStarted=false;
	break
	
case NSComparisonResult.OrderedDescending:
	//Sale Start Date is in the past so sale is on
	saleStarted = true;
	break
	
default:
	//Sale Start Date is now
	//saleStart = true
	break    	
}
        
        
        
        
        
		
        
        
        





        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

