//
//  WDNavigationController.swift
//  LiudaShortVideoDemo
//
//  Created by 4wd-ios on 2018/1/31.
//  Copyright © 2018年 shenzhongdi. All rights reserved.
//

import UIKit

class WDNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
        
        navigationBar.barTintColor = .black
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = leftItem
        }
        super.pushViewController(viewController, animated: true)
    }

    lazy var leftItem: UIBarButtonItem = {
        let item = UIBarButtonItem(customView: backBtn)
        return item
    }()

    lazy var backBtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.setImage(UIImage(named: "whiteBack"), for: .normal)
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 23)
        btn.addTarget(self, action: #selector(popView), for: .touchUpInside)
        return btn
    }()

    @objc func popView() {
        popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
