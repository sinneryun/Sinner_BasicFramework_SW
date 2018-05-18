//
//  UMengTools.swift
//  smallCrowdStar
//
//  Created by 营口港旅-iOS-云 on 2018/5/15.
//  Copyright © 2018年 ty4wd. All rights reserved.
//

import Foundation
import UIKit

class UMengTools: NSObject {
    
    //进入页面
    class func GoIn(ViewTitle: String){
        MobClick.beginLogPageView(ViewTitle)
    }
    
    //离开页面
    class func GoOut(ViewTitle: String){
        MobClick.endLogPageView(ViewTitle)
    }


    class func share(shareTitle: String, shareDescr: String, shareImgUrl: String, shareUrl: String, shareController: UIViewController, shareSuccess:@escaping (()->Void), shareError:@escaping ((_ error:Error)->Void)) {
        UMSocialUIManager.setPreDefinePlatforms([NSNumber(integerLiteral:UMSocialPlatformType.wechatSession.rawValue),
                                                 NSNumber(integerLiteral:UMSocialPlatformType.wechatTimeLine.rawValue),
                                                 NSNumber(integerLiteral:UMSocialPlatformType.QQ.rawValue),
                                                 NSNumber(integerLiteral:UMSocialPlatformType.tim.rawValue),
                                                 NSNumber(integerLiteral:UMSocialPlatformType.sina.rawValue)])
        UMSocialUIManager.showShareMenuViewInWindow { (platformType, userInfo) in
            let messageObject:UMSocialMessageObject = UMSocialMessageObject.init()
            let shareObject:UMShareWebpageObject = UMShareWebpageObject.init()
            shareObject.title = shareTitle
            shareObject.descr = shareDescr
            shareObject.thumbImage = shareImgUrl
            shareObject.webpageUrl = shareUrl
            messageObject.shareObject = shareObject
            UMSocialManager.default().share(to: platformType,messageObject: messageObject, currentViewController: shareController, completion: { (shareResponse, error) in
                if error != nil{
                    shareError(error!)
                    WDLOG("share Fail with error : %@",file: error! as! String)
                }else{
                    shareSuccess()
                    WDLOG("share succeed")
                }
            })
        }
        
        
    }
    
    
   
    
    
    
}


