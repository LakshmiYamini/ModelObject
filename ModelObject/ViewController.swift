//
//  ViewController.swift
//  ModelObject
//
//  Created by iMicron_IOSDev on 9/6/17.
//  Copyright © 2017 iMicron_IOSDev. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    let searchobj : Search = Search()

    @IBOutlet var sumLabel: UILabel!
    @IBOutlet var secondTF: UITextField!
    @IBOutlet var firstTF: UITextField!
    var dataRecieved : String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        sumLabel.text = dataRecieved
      
    }
    override func viewWillAppear(_ animated: Bool) {
        sumLabel.text = dataRecieved
    }

    @IBAction func addButton(_ sender: Any) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue"
        {
            let svcObj = segue.destination as? SeaViewController
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    }



