//
//  WDtestViewController.swift
//  smallCrowdStar
//
//  Created by 营口港旅-iOS-云 on 2018/5/15.
//  Copyright © 2018年 ty4wd. All rights reserved.
//

import UIKit

class WDtestViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        MobClick.beginLogPageView("WDtestViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        MobClick.endLogPageView("WDtestViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
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
