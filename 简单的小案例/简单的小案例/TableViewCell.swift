//
//  TableViewCell.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell{

    @IBOutlet weak var nameLabel: UILabel! //对应的属性
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var heardIamge: UIImageView!
    
    
    override func awakeFromNib() {

        super.awakeFromNib()
        
         heardIamge.userInteractionEnabled = true
        
         let tapGR = UITapGestureRecognizer(target: self, action: Selector("tapHandler"))

         heardIamge.addGestureRecognizer(tapGR)
        
    }

    func tapHandler() {
        
        NSNotificationCenter.defaultCenter().postNotificationName(kNotificationEnter, object: nil)
        
    }
    
}
