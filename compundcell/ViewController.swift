//
//  ViewController.swift
//  compundcell
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableview: UITableView!
    var foods: [String]?
    var calories: [Int]?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard foods != nil else{return UITableViewCell()}
//        let cell = UITableViewCell(style: .value1, reuseIdentifier: " ")
//        let foodname = foods![indexPath.row]
//        cell.textLabel?.text = foodname
//        cell.imageView?.image = UIImage(named: foodname)
//        cell.detailTextLabel?.text = "calories: \(calories![indexPath.row])"
//        return cell
        let foodName = foods![indexPath.row]
        let foodcalorie = calories![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "food cell") as! foodTableViewCell
        cell.setName(name: foodName, calories: foodcalorie, image: foodName)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foods = ["Apple","Banana","Burger","Fries","Orange","Pizza"]
        calories = [50 , 60, 900, 300, 70,1000]
        tableview.register(foodTableViewCell.self, forCellReuseIdentifier: "food cell")
    }


}

