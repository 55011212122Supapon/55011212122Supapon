//
//  ViewController.swift
//  Exam1_55011212122
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController/*,UITableViewDataSource */{
    
    var items = [String]()
    var name = [String]()
    var amount = [Int]()
    var price = [Double]()
    

    @IBAction func addItem(sender: AnyObject) {
        
       /* var alert = UIAlertController(title: "New Stocks", message: "Add a new stocks", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) { (action:UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            self.items.append(textField.text)
            //self.saveName(textField.text)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default){ (action:UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)*/
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.greenColor()
        
        title = "\"ตลาดหุ้นออนไลน์\""
        tableView.registerClass(UITableViewCell.self, forHeaderFooterViewReuseIdentifier: "Cell")
        
        
        
        //Label.backgroundColor = UIColor.redColor()

    }
    /*func tableView(tableView: UITableView,numberOfRowsInSection section:Int) ->Int{
        return items.count
    }
    
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath:NSIndexPath) ->UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

