//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Sudhanshu Singh on 20/12/14.
//  Copyright (c) 2014 Sudhanshu Singh. All rights reserved.
//

import UIKit
var toDoItems:[String] = []
class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tasksTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        
        if var storedToDoItems : AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("toDoItems"){
            toDoItems=[]
            for var index=0 ; index < storedToDoItems.count; index++             {
                toDoItems.append(storedToDoItems[index] as NSString)
                }
        }
        tasksTable.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    {
        return toDoItems.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = toDoItems[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            
        toDoItems.removeAtIndex(indexPath.row)
           
        let fixedToDoItem = toDoItems
        NSUserDefaults.standardUserDefaults().setObject(fixedToDoItem, forKey: "toDoItems")
        NSUserDefaults.standardUserDefaults().synchronize()
        tasksTable.reloadData()

        }
}
}
