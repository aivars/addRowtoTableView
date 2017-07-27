//
//  ViewController.swift
//  NewProject
//
//  Created by Pankaj Sharma on 7/18/17.
//  Copyright © 2017 PeedeeThePro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var data = String()
    var userDefaults = UserDefaults()
    var myArray: [String] = ["1","2","3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(myArray) //defined in var values presented in the Array
        
        // read values from memmory
        if (userDefaults.array(forKey: "SavedArray") != nil) {
            self.myArray = userDefaults.object(forKey: "SavedArray") as! [String]
        }
        
    }
    
    @IBOutlet weak var myTextField: UITextField!
    @IBAction func enterBtn(_ sender: Any) {
        if myTextField.text != "" {
            data = myTextField.text!
            myTextField.text = ""
            
            performSegue(withIdentifier: "textSegue", sender: self)
            
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        myArray.append(data)
        print("in willDisapear")
        userDefaults.setValue(myArray, forKey: "SavedArray")
        print("Savied array \(myArray)")
    }
    
}
