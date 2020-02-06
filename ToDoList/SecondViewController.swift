//
//  SecondViewController.swift
//  ToDoList
//
//  Created by  Jinyoung Kang     on 2/5/20.
//  Copyright © 2020  Jinyoung Kang    . All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func additem(_ sender: Any)
    {
        if (input.text != "")
        {
            list.append (input.text!)
            input.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Do any additional setup after loading the view.
     }


}

