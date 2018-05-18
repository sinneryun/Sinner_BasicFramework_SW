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
        UMengTools.GoIn(ViewTitle: self.title!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UMengTools.GoOut(ViewTitle: self.title!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        self.title = "测试"
        // Do any additional setup after loading the view.
        let btn:UIButton = UIButton(type: .custom)
        btn.frame = CGRect(x: 10, y: 150, width: 100, height: 30)
        btn.setTitle("Go", for: .normal)
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action:#selector(btnClick), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
    }
    
    @objc func btnClick(){
        print("share")
        
        UMengTools.share(shareTitle: "再测试一下",
                         shareDescr: "最后一下",
                         shareImgUrl: "http://img.zcool.cn/community/01f09e577b85450000012e7e182cf0.jpg@1280w_1l_2o_100sh.jpg",
                         shareUrl: "http://www.baidu.com",
                         shareController: self,
                         shareSuccess: {
                            
        },
                         shareError: { (error) in
                            WDLOG("share Fail with error : %@",file: error as! String)
        })
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
