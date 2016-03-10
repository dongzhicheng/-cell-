//
//  ViewController.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var tem = "tem"
    
    let TableViewCellIdentif = "TableViewCellIdentif"
    
    let secondTableViewCellIdentif = "secondTableViewCellIdentif"
    
    var numZu : [CellModel] = [] //初始化一个数组
     
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:Selector("changeVC") , name:kNotificationEnter, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("secondVC") , name:"secondTableViewCellNoti", object: nil)
        
        
        let image = UIImage()
        
        let imageSecond = UIImage()
        
        let dic : [String : AnyObject] = ["name" :"nvli" , "age" : 22 ,"image" :image] //定义一个字典
        
        let dicSecond : [String : AnyObject] = ["name" : "小王" , "age" : 33 , "image" : imageSecond]
        
        let cellModleDic = CellModel(dic: dic) //字典转模型
        
        let cellModelDicScond = CellModel(dic: dicSecond)
        
        numZu.append(cellModleDic) // 加入到数组中
        
        numZu.append(cellModelDicScond)
        
        for var i  = 0  ; i < 20 ; i++ { // 循环20次
        
            numZu.append(cellModleDic) // 加入到数组中
            
            numZu.append(cellModelDicScond)
        }
    }

    func changeVC() {
    
        self.navigationController?.pushViewController(secondViewController(), animated: true)
        
    }
    
    func secondVC(){
        
        [self.navigationController?.pushViewController(secondViewController(), animated:true)]
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numZu.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if tem == "tem" {
            
            let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentif, forIndexPath: indexPath) as! TableViewCell //转换Cell的类型
            
            cell.nameLabel.text = numZu[indexPath.row].name //获取name数据
            
            let str  = numZu[indexPath.row].age
            
            cell.ageLabel.text = String(str)  //获取age数据
            
            cell.heardIamge.image = numZu[indexPath.row].heardimage
            
            
            tem = "temfirstCell"
            
            return cell
            
            
        }else{
            
            let cell = tableView.dequeueReusableCellWithIdentifier(secondTableViewCellIdentif, forIndexPath: indexPath) as! secondTableViewCell //转换Cell的类型
            
            cell.nameLabel.text = numZu[indexPath.row].name //获取name数据
            
            let str  = numZu[indexPath.row].age
            
            cell.ageLabel.text = String(str)  //获取age数据
            
            cell.heardIamge.image = numZu[indexPath.row].heardimage
            
            tem = "tem"
            
            return cell
        }
        
    }
    
    
}

