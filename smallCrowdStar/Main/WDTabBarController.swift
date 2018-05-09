//
//  WDTabBarController.swift
//  LiudaShortVideoDemo
//
//  Created by 4wd-ios on 2018/1/31.
//  Copyright © 2018年 shenzhongdi. All rights reserved.
//

import UIKit

class WDTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBarColor()
        
        createAllChildController()
    }
    
    func changeBarColor() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: WD_APP_WIDTH, height: WD_TABBAR_HEIGHT))
        view.backgroundColor = .black
        tabBar.insertSubview(view, at: 0)
        tabBar.isOpaque = true
    }
    
    func createAllChildController(){
        setUpOneChildController(rootVC: WDLiveListController(), normalImgName: "直播间-nor", selectImgName: "直播间-sel", title: "直播间")
        setUpOneChildController(rootVC: WDVideoViewController(), normalImgName: "视频-nor", selectImgName: "视频-sel", title: "视频")
    }
    
    func setUpOneChildController(rootVC:UIViewController, normalImgName:String, selectImgName:String, title:String){
        let nvc = WDNavigationController(rootViewController: rootVC)
        nvc.tabBarItem.image = UIImage(named: normalImgName)?.withRenderingMode(.alwaysOriginal)
        nvc.tabBarItem.selectedImage = UIImage(named: selectImgName)?.withRenderingMode(.alwaysOriginal)
        nvc.tabBarItem.title = title
    nvc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.orange], for: .selected)
        
        addChildViewController(nvc)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
