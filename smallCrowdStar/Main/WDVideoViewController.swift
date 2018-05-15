//
//  WDVideoViewController.swift
//  smallCrowdStar
//
//  Created by 4wd-ios on 2018/5/9.
//  Copyright © 2018年 ty4wd. All rights reserved.
//

import UIKit

class WDVideoViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        MobClick.beginLogPageView("WDVideoViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        MobClick.endLogPageView("WDVideoViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        title = "视频"
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
