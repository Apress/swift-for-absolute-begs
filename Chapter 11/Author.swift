//
//  Author.swift
//  BookStore
//
//  Created by Brad Lees on 11/2/14.
//  Copyright (c) 2014 inn. All rights reserved.
//

import Foundation
import CoreData

class Author: NSManagedObject {

    @NSManaged var firstName: String
    @NSManaged var lastName: String
    @NSManaged var books: Book

}
