//
//  Branch+CoreDataProperties.swift
//  PramCoreData
//
//  Created by PRAMOD S on 04/09/17.
//  Copyright © 2017 PRAMOD S. All rights reserved.
//

import Foundation
import CoreData


extension Branch {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Branch> {
        return NSFetchRequest<Branch>(entityName: "Branch")
    }

    @NSManaged public var branchId: Int32
    @NSManaged public var branchName: String?
    @NSManaged public var students: NSSet?

}

// MARK: Generated accessors for students
extension Branch {

    @objc(addStudentsObject:)
    @NSManaged public func addToStudents(_ value: Student)

    @objc(removeStudentsObject:)
    @NSManaged public func removeFromStudents(_ value: Student)

    @objc(addStudents:)
    @NSManaged public func addToStudents(_ values: NSSet)

    @objc(removeStudents:)
    @NSManaged public func removeFromStudents(_ values: NSSet)

}
