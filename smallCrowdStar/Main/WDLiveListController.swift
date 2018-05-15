//
//  WDLiveListController.swift
//  smallCrowdStar
//
//  Created by 4wd-ios on 2018/5/9.
//  Copyright © 2018年 ty4wd. All rights reserved.
//

import UIKit

class WDLiveListController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        MobClick.beginLogPageView("WDLiveListController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        MobClick.endLogPageView("WDLiveListController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        title = "直播间"
        
        
        let btn:UIButton = UIButton(type: .custom)
        btn.frame = CGRect(x: 10, y: 150, width: 100, height: 30)
        btn.setTitle("Go", for: .normal)
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action:#selector(btnClick), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
        
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    @objc func btnClick(){
        let testView = WDtestViewController()
        
        self.navigationController?.pushViewController(testView , animated: true)
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
