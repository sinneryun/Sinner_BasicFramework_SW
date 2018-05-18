//
//  AppDelegate.swift
//  LiudaShortVideoDemo
//
//  Created by 4wd-ios on 2018/1/31.
//  Copyright © 2018年 shenzhongdi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarVC = WDTabBarController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
        
        self.UMAnalytics()
        
        
        
        
        
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        return true
    }
    
    // MARK:- 友盟统计
    func UMAnalytics(){
        
        /*  // 废弃的旧SDK
        //在发布到AppStore的时候，如果没有特殊的情况，一定要设置为false
        MobClick.setLogEnabled(true)
        let obj = UMAnalyticsConfig.init()
        obj.appKey = WD_UMeng_Key
        MobClick.start(withConfigure: obj)
        //友盟默认是获取的build，内部构建的版本号，如果需要在统计中显示的版本号与AppStore一致的话，则需要加入以下代码。
        let version =  Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        MobClick.setAppVersion(version)
        */
        
        //友盟统计
        UMConfigure.initWithAppkey(WD_UMeng_Key, channel: nil)
        MobClick.setScenarioType(eScenarioType(rawValue: 0)!)
        
        
        //打开图片水印
        UMSocialGlobal.shareInstance().isUsingWaterMark = true
        //关闭强制验证https，可允许http图片分享，但需要在info.plist设置安全域名
        UMSocialGlobal.shareInstance().isUsingHttpsWhenShareContent = false
        
        //分享注册设置appKey和appSecret
        //微信好友
        UMSocialManager.default().setPlaform(UMSocialPlatformType(rawValue: UMSocialPlatformType.wechatSession.rawValue)!, appKey: WD_WeChat_ID, appSecret: WD_WeChat_SECRET, redirectURL: "http://mobile.umeng.com/social")
        //微信朋友圈
        UMSocialManager.default().setPlaform(UMSocialPlatformType(rawValue: UMSocialPlatformType.wechatTimeLine.rawValue)!, appKey: WD_WeChat_ID, appSecret: WD_WeChat_SECRET, redirectURL: "http://mobile.umeng.com/social")
        //QQ
        UMSocialManager.default().setPlaform(UMSocialPlatformType(rawValue: UMSocialPlatformType.QQ.rawValue)!, appKey: WD_QQ_ID, appSecret: WD_QQ_KEY, redirectURL: "http://mobile.umeng.com/social")
        //sina
        UMSocialManager.default().setPlaform(UMSocialPlatformType(rawValue: UMSocialPlatformType.sina.rawValue)!, appKey: WD_Sina_ID, appSecret: WD_Sina_SECRET, redirectURL: "http://mobile.umeng.com/social")

            
            
        }
    
        
        
        
}

