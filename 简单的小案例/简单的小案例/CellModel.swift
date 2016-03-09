//
//  CellModel.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class CellModel: NSObject {

    var name : String?
    
    var age : Int = 0
    
    var heardimage : UIImage?
    
    init(dic: [String: AnyObject]) {
        
        super.init()
        
        setValuesForKeysWithDictionary(dic) // 字典转模型
        
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
        print("这个方法保证程序不退出的")
    }
}
