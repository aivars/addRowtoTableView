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
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        }
    
        @IBOutlet weak var myTableView: UITableView!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //myArray.append(myLabel)
        insertRow()
        
      print(myArray)
                }
    
    func insertRow() {
        myArray.append(myLabel)
        let index = IndexPath(row: myArray.count - 1, section: 0)
        myTableView.beginUpdates()
        myTableView.insertRows(at: [index], with: .automatic)
        myTableView.endUpdates()
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
