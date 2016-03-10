//
//  secondViewController.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class secondViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor() //设置控制器的view对应的颜色
        
        setUpUI()
    }

    private func setUpUI() {
    
    
    }
    
    lazy var button : UIButton = {
    
        let button = UIButton(type: UIButtonType.Custom)
        
        button.frame = CGRectMake(60, 60, 100, 100)
        
        button.setTitle("点击按钮", forState: UIControlState.Normal)
        
        button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        
        button.backgroundColor = UIColor.greenColor()
        
        return button
        
    }()
    
}
