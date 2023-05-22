//
//  ViewController.swift
//  TableCellLesson
//
//  Created by DA MAC M1 118 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var TableView: UITableView!
    
    var cars = ["Toyota", "VW", "BMW", "Mercedes", "Haval"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableView.dataSource = self
    }
    
    
    

}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection Section:
                   Int) -> Int{
        
        return cars.count
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
    
  
    }


    
