//
//  Book.swift
//  BookStore
//
//  Created by Brad Lees on 11/2/14.
//  Copyright (c) 2014 inn. All rights reserved.
//

import Foundation
import CoreData

class Book: NSManagedObject {

    @NSManaged var title: String
    @NSManaged var price: NSNumber
    @NSManaged var yearPublished: NSNumber
    @NSManaged var author: Author

}
