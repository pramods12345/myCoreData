//
//  ViewController.swift
//  PramCoreData
//
//  Created by PRAMOD S on 01/09/17.
//  Copyright © 2017 PRAMOD S. All rights reserved.
//


import UIKit
import CoreData



var studentArray :[Student] = []
var nameArray : [String] = []
var ageArray : [Int32] = []
class ViewController: UIViewController {
    
    let branch  = CollegeViewController()
    
    //self.branch = branch
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //createStudent()
        fetchStudent()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.newBackgroundContext()
        
        context.perform {
    let studentEntity: Student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context) as! Student
            
            //studentEntity.name = "Name"
            studentEntity.name = self.name.text
            
            //studentEntity.age = 25
            //studentEntity.age = Int(self.age1.text!)!
            
            let myString = self.age.text
            studentEntity.age  = Int32(myString!)!
        
            do {
                try context.save()
            }
            catch let error {
                print(error)
            }
            
        }
        
    }

    
    
    
    func fetchStudent() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<Student>(entityName: "Student")
        //let predicate = NSPredicate(format: "name CONTAINS[cd] %@", "name")
        //let sortDescriptor = NSSortDescriptor(key: "name", ascending: false)
        
       // request.predicate = predicate
        //request.sortDescriptors = [sortDescriptor]
        
        do {
            let objects = try context.fetch(request) 
             studentArray = objects
           // print(objects)
//            for item in objects {
//                print(item.name ?? "")
//                guard let data = item.name else{
//                    return
//                }
//            nameArray.append(data)
//                print(item.age)
//                
//                ageArray.append(item.age)
//            }
            for item in studentArray{
                print(item.name ?? "")
                guard let data = item.name else{
                    return
                }
                nameArray.append(data)
                print(item.age)
                
                ageArray.append(item.age)

                
            }
            
            
        }
        catch {
            
        }
    
    }
    @IBAction func display(_ sender: UIButton) {
        let displayTableViewInstance = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"TableViewController") as! TableViewController
       present(displayTableViewInstance, animated: true)
        self.navigationController?.pushViewController(displayTableViewInstance, animated: true)

    }
    
        
}

//let branch  = CollegeViewController()

//var student =  ViewController()

