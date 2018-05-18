//
//  WDGlobalDefine.swift
//  LiudaShortVideoDemo
//
//  Created by 4wd-ios on 2018/1/31.
//  Copyright © 2018年 shenzhongdi. All rights reserved.
//

import UIKit

// MARK:- 颜色方法
//rgb颜色
func WD_RGB (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
//16进制颜色
func WD_HEXCOLOR (_ hexValue: Int) -> UIColor {
    return UIColor.hexInt(hexValue)
}

// 当前系统版本
let WD_VERSION = (UIDevice.current.systemVersion as NSString).floatValue
// 屏幕宽度
let WD_APP_WIDTH = UIScreen.main.bounds.width
// 屏幕高度
let WD_APP_HEIGHT = UIScreen.main.bounds.height

//状态栏高度
let WD_STATUSBAR_HEIGHT = UIApplication.shared.statusBarFrame.size.height
//导航条高度
let WD_NAVBAR_HEIGHT = CGFloat(44.0)
//底部tabbar高度
let WD_TABBAR_HEIGHT = CGFloat((WD_STATUSBAR_HEIGHT > 20) ? 83 : 49)
//整个顶部的高度
let WD_TOP_HEIGHT = (WD_STATUSBAR_HEIGHT + WD_NAVBAR_HEIGHT)


// MARK:- 自定义打印方法
func WDLOG<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    
    #if DEBUG
        
        let fileName = (file as NSString).lastPathComponent
        
        print("\(fileName):(\(lineNum))-\(message)")
        
    #endif
}

// MARK:- 获取当前展示ViewContrller
func currentViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    if let nav = base as? UINavigationController {
        return currentViewController(base: nav.visibleViewController)
    }
    if let tab = base as? UITabBarController {
        return currentViewController(base: tab.selectedViewController)
    }
    if let presented = base?.presentedViewController {
        return currentViewController(base: presented)
    }
    return base
}


