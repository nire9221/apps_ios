//
//  FirstViewController.swift
//  ToDoList
//
//  Created by  Jinyoung Kang     on 2/5/20.
//  Copyright © 2020  Jinyoung Kang    . All rights reserved.
//

import UIKit

var list = ["buy milk","Run 5 miles","get peter", "plant my plants" ]

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var myTableView: UITableView!

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
     
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
      {
           let cell = UITableViewCell (style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
           cell.textLabel?.text =  list[indexPath.row]
           
           return (cell)
       }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
             list.remove(at: indexPath.row)
             myTableView.reloadData()
        }
    }
    
     
    override func viewDidAppear(_ animated: Bool) {
           myTableView.reloadData()
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

