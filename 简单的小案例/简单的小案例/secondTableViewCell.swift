//
//  secondTableViewCell.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class secondTableViewCell: UITableViewCell {

    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var heardIamge: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        heardIamge.userInteractionEnabled = true
        
        let tapGR = UITapGestureRecognizer(target: self, action: Selector("tapHandl"))
    
        heardIamge.addGestureRecognizer(tapGR) //给hradImage添加手势识别器
    
    }
    func tapHandl(){
        
        NSNotificationCenter.defaultCenter().postNotificationName("secondTableViewCellNoti", object: nil)//发送通知消息
    
    }
    
}
