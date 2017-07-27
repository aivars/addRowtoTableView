//
//  TableVC.swift
//  NewProject
//
//  Created by Pankaj Sharma on 7/18/17.
//  Copyright © 2017 PeedeeThePro. All rights reserved.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myArray: [String] = ["1","2","3"]
    var myLabel = String()
    let userDefaults = UserDefaults()
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("myArray in wiewDidLoad \(myArray)") //defined in var values presented in the Array
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // read values from memmory
        if (userDefaults.array(forKey: "SavedArray") != nil) {
            self.myArray = userDefaults.object(forKey: "SavedArray") as! [String]
            print("myArray in wiewWillAppear \(myArray)")
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellTitle = myArray[indexPath.row]
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell") as! MyCell
        cell.myTitle.text = cellTitle
        
        return cell
    }
    
}
