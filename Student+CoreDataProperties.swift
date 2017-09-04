//
//  Student+CoreDataProperties.swift
//  PramCoreData
//
//  Created by PRAMOD S on 04/09/17.
//  Copyright © 2017 PRAMOD S. All rights reserved.
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var age: Int32
    @NSManaged public var name: String?
    @NSManaged public var branch: Branch?

}
