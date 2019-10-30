//
//  foodTableViewCell.swift
//  compundcell
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class foodTableViewCell: UITableViewCell {

    var nameLable: UILabel?
    var caloriesLable: UILabel?
    var iconFoodImage: UIImageView?
    func setName(name: String , calories: Int , image: String) {
        nameLable = UILabel(frame: CGRect(x: 10, y: 15, width: 140, height: 40))
        nameLable?.text = name
        caloriesLable = UILabel(frame: CGRect(x: 160, y: 15, width: 140, height: 40))
        caloriesLable?.text = "\(calories) cals"
        iconFoodImage = UIImageView(image: UIImage(named: image))
        iconFoodImage?.image = UIImage(named: image)
        iconFoodImage?.frame = CGRect(x: 310, y: 6, width: 40, height: 40)
        self.contentView.addSubview(nameLable!)
        self.contentView.addSubview(caloriesLable!)
        self.contentView.addSubview(iconFoodImage!)
        
        
    }
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
