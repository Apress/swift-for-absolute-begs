//
//  DetailViewController.swift
//  Chapter 8.1
//
//  Created by Brad Lees on 11/9/14.
//  Copyright (c) 2014 mycompany.com. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController,  UIAlertViewDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!

    
    @IBOutlet weak var pagesOutlet: UILabel!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    var delegate:BookStoreDelegate? = nil

    var myBook = Book()

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
        }
    }

    func configureView() {
        if let detail: AnyObject = self.detailItem {
            myBook = detail as Book
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func deleteBookAction(sender: UIBarButtonItem) {
        let alert = UIAlertView()
        alert.title = "Warning"
        alert.message = "Delete this book?"
        alert.addButtonWithTitle("No")
        alert.addButtonWithTitle("Yes")
        alert.delegate = self;
        alert.show()
    }
    
    func alertView(View: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        
        switch buttonIndex{
            
        case 0:
            println("No");
            break;
        case 1:
            println("Yes");
            delegate!.deleteBook(self)
            break;
        default:
            println("Default");
            break;
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if segue.identifier == "editDetail" {
            let vc = segue.destinationViewController as AddBookViewController
            vc.delegate = delegate
            vc.editBook = true
            vc.book = myBook
        }
    }



}

