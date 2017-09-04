//
//  CollegeViewController.swift
//  PramCoreData
//
//  Created by PRAMOD S on 04/09/17.
//  Copyright © 2017 PRAMOD S. All rights reserved.
//

import UIKit
import CoreData

var branchNameArray : [String] = []
var branchIDArray : [Int32] = []


class CollegeViewController: UIViewController {
    
    @IBOutlet weak var branchName: UITextField!
    
    @IBOutlet weak var branchId: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         fetchCollege()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    
    
    
    
    
    @IBAction func saveCollege(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.newBackgroundContext()
        
        context.perform {
        let BranchEntity: Branch = NSEntityDescription.insertNewObject(forEntityName: "Branch", into: context) as! Branch
         
            //studentEntity.name = "Name"
            BranchEntity.branchName = self.branchName.text
            
            //studentEntity.age = 25
           // studentEntity.age = Int(self.age1.text!)!
            
            let myString = self.branchId.text
           BranchEntity.branchId  = Int32(myString!)!
            do {
                try context.save()
            }
            catch let error {
                print(error)
            }
            
        }
        
    }
    
    
    func fetchCollege() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<Branch>(entityName: "Branch")
        //let predicate = NSPredicate(format: "name CONTAINS[cd] %@", "name")
        //let sortDescriptor = NSSortDescriptor(key: "name", ascending: false)
        
        // request.predicate = predicate
        //request.sortDescriptors = [sortDescriptor]
        
        do {
            let objects = try context.fetch(request)
            
            // print(objects)
            for item in objects {
                print(item.branchName ?? "")
                guard let data = item.branchName else{
                    return
                }
                branchNameArray.append(data)
                print(item.branchId)
                
                branchIDArray.append(item.branchId)
            }
        }
        catch {
            
        }
        
    }

   
    @IBAction func addStudent(_ sender: UIButton) {
        let displayTableViewInstance = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ViewController") as! ViewController
        present(displayTableViewInstance, animated: true)
        self.navigationController?.pushViewController(displayTableViewInstance, animated: true)

       
   }

    }



 //let branch  = CollegeViewController()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


