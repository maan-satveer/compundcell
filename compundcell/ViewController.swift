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
    var fooddata: [(name: String , calory: Int)]?
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodName = fooddata![indexPath.row].name
        let alertcontroller = UIAlertController(title: "food selected", message: "you have selected \(foodName)", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        let printAction = UIAlertAction(title: "Print", style: .default) { (action) in
            print("Selected food is \(foodName)")
        }
        alertcontroller.addAction(okAction)
        alertcontroller.addAction(printAction)
        self.present(alertcontroller, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foods = ["Apple","Banana","Burger","Fries","Orange","Pizza"]
        calories = [50 , 60, 900, 300, 70,1000]
        fooddata = [("Apple",50),("Banana",60),("Burger",900),("Pizza",700),("Fries",600),("Orange",30)]
        tableview.register(foodTableViewCell.self, forCellReuseIdentifier: "food cell")
    }


}

