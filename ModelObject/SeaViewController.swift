//
//  SeaViewController.swift
//  ModelObject
//
//  Created by iMicron_IOSDev on 9/13/17.
//  Copyright © 2017 iMicron_IOSDev. All rights reserved.
//

import UIKit

class SeaViewController: UIViewController {
 let searchObj = Search()
   
    var resultVal = String()
    
    @IBOutlet var secondV: UITextField!
    @IBOutlet var firstV: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func send(_ sender: Any) {
          resultVal = String(searchObj.sumMethod(aVal: Int(firstV.text!)!, bVal: Int(secondV.text!)!))
        self.performSegue(withIdentifier: "addSegue", sender: self)
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue"
        {
            let vcObj = segue.source as? ViewController
            vcObj?.dataRecieved = resultVal
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}
