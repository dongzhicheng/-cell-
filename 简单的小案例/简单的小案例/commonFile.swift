//
//  commonFile.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import Foundation


/// 输出日志

/// - parameter message:  日志消息

/// - parameter logError: 错误标记，默认是 false，如果是 true，发布时仍然会输出

/// - parameter file:     文件名

/// - parameter method:   方法名

/// - parameter line:     代码行数

func printLog<T>(message: T,
    logError: Bool = false,
    file: String = __FILE__,
    method: String = __FUNCTION__,
    line: Int = __LINE__)
{
    if logError {
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    } else {
        #if DEBUG
            print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
        #endif
    }
}

//定义通知
let kNotificationEnter = "change"

