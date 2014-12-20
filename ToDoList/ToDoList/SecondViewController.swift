//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Sudhanshu Singh on 20/12/14.
//  Copyright (c) 2014 Sudhanshu Singh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    //note syntax to
   
    
    @IBOutlet weak var enterItemText: UITextField!
    
    @IBAction func addItem(sender: UIButton) {
        if (enterItemText.text.isEmpty) {
            let alert = UIAlertView()
            alert.title = "No Text"
            alert.message = "Please Enter Text In The Box"
            alert.addButtonWithTitle("Ok")
            alert.show()
            
        }
        else{
           enterItemText.clearsOnBeginEditing = true
        toDoItems.append(enterItemText.text)
        let fixedToDoItem = toDoItems
        NSUserDefaults.standardUserDefaults().setObject(fixedToDoItem, forKey: "toDoItems")
        NSUserDefaults.standardUserDefaults().synchronize()
        self.view.endEditing(true)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(enterItemText: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        enterItemText.resignFirstResponder()
        return true;
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

