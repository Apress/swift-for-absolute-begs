//
//  ViewController.swift
//  BookStore
//
//  Created by Brad Lees on 11/2/14.
//  Copyright (c) 2014 inn. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var managedObjectContext: NSManagedObjectContext!;
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        managedObjectContext = appDelegate.managedObjectContext! as NSManagedObjectContext
        
        //myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        //myTableView.dataSource = self
        //myTableView.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(loadBooks().count)
        return loadBooks().count
        //return 5
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        var book: Book = loadBooks()[indexPath.row] as Book
        cell.textLabel!.text = book.title
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func loadBooks() -> Array<AnyObject> {
        var error: NSError? = nil
        var fetchRequest = NSFetchRequest(entityName: "Book")
        let result : [AnyObject] = managedObjectContext!.executeFetchRequest(fetchRequest, error:&error)!
        return result;
    }
    
    @IBAction func addNew(sender: AnyObject) {
        let entity =  NSEntityDescription.entityForName("Book", inManagedObjectContext:managedObjectContext)
        
        var book = Book(entity: entity!,insertIntoManagedObjectContext:managedObjectContext)
        
        book.title = "My Book:" + String(loadBooks().count)
        
        var error: NSError?
        managedObjectContext.save(&error)
        myTableView.reloadData()
        
    }
}

