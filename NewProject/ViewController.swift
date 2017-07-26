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
    @IBOutlet weak var myTextField: UITextField!
    @IBAction func enterBtn(_ sender: Any) {
        if myTextField.text != "" {
                 data = myTextField.text!
            myTextField.text = ""
            
            performSegue(withIdentifier: "textSegue", sender: self)
            
                }
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let showText = segue.destination as! TableVC
        showText.myLabel = data
        }
    
        override func viewDidLoad() {
        super.viewDidLoad()
      }
}

