//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Sudhanshu Singh on 20/12/14.
//  Copyright (c) 2014 Sudhanshu Singh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var toDoItems = ["eat","drink","sleep","repeat"]
    @IBOutlet weak var enterItemText: UITextField!
    
    @IBAction func addItem(sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

