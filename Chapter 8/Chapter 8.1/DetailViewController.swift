//
//  DetailViewController.swift
//  Chapter 8.1
//
//  Created by Brad Lees on 11/9/14.
//  Copyright (c) 2014 mycompany.com. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!

    @IBOutlet weak var test: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
        }
    }

    func configureView() {
        if let detail: AnyObject = self.detailItem {
            var myBook = detail as Book
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


}

