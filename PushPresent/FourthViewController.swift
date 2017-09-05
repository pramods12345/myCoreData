//
//  FourthViewController.swift
//  PushPresent
//
//  Created by PRAMOD S on 05/09/17.
//  Copyright © 2017 PRAMOD S. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    var backHandler: ((_ sucess :Bool) -> Void)?
    
    @IBAction func moveFirst(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
       // self.backHandler!(true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
