//
//  WDBaseViewController.swift
//  LiudaShortVideoDemo
//
//  Created by 4wd-ios on 2018/1/31.
//  Copyright © 2018年 shenzhongdi. All rights reserved.
//

import UIKit

class WDBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        var frame = CGRect(x: 0, y: 0, width: WD_APP_WIDTH, height: WD_APP_HEIGHT-WD_TOP_HEIGHT-WD_TABBAR_HEIGHT)
        if navigationController?.navigationBar.isHidden == true{
            frame.size.height += WD_TOP_HEIGHT
        }
        if hidesBottomBarWhenPushed == true {
            frame.size.height += WD_TABBAR_HEIGHT
        }
        view.frame = frame
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
