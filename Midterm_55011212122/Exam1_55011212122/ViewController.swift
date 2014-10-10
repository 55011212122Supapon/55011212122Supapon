//
//  ViewController.swift
//  Exam1_55011212122
//
//  Created by student on 10/10/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{
    let Section1Header = "Section1Header"
    var tableData = ["ราคาหุ้นขึ้น 3%","ราคาหุ้นขึ้น 5%","ราคาหุ้นขึ้น 10%"]
    
    @IBOutlet var tableview: UITableView!
    
    @IBAction func Name(sender: AnyObject) {
        var tipName : String
    }
    
    @IBAction func Volume(sender: AnyObject) {
        var tipVolume : Int
    }
    
    @IBAction func Price(sender: AnyObject) {
        var Price : Double
    }

    @IBAction func Total(sender: AnyObject) {
        var tipTotal : Int
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self,forCellReuseIdentifier: self.Section1Header)
    }
    
    func numberOfSectionInTableview(tableView: UITableView!) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tableData.count
    }
   func tableView(tableView: UITableView, CellforRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.Section1Header) as UITableViewCell
        cell.textLabel!.text = self.tableData[indexPath.row]
        var imageView!.image = imageName
        return cell
    }
   func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {    }
    
    func calcTipWithTipHeader(tipHeader:Double) ->(tipVolum:Int, Price:Double){
    let tipHeader = (Price*3/100)*Double(Volume)
        return tipHeader
    }
    func calcTipWithTipTotal(tipTotal:Int) ->(tipVolum:Int, Price:Double){
        let tipTotal = tipVolum*Int(Price)
        return tipTotale
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

