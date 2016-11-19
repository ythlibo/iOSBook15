//
//  ViewController.swift
//  ModalViewSample
//
//  Created by 关东升 on 2016-11-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
            selector: #selector(registerCompletion(_:)),
            name: NSNotification.Name(rawValue: "RegisterCompletionNotification"),
            object: nil)
        
        //监听系统通知UIApplicationDidEnterBackgroundNotification
        NotificationCenter.default.addObserver(self,
            selector: #selector(handleEnterBackground(_:)),
            name: NSNotification.Name.UIApplicationDidEnterBackground, object: nil)
        
        //监听系统通知UIApplicationWillEnterForegroundNotification
        NotificationCenter.default.addObserver(self,
            selector: #selector(handleEnterForeground(_:)),
            name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        NotificationCenter.default.removeObserver(self)
    }
    
    func registerCompletion(_ notification: Notification) {
        
        let theData = notification.userInfo!
        let username = theData["username"] as! String
        
        NSLog("username = %@", username)
    }
    
    func handleEnterBackground(_ notification : Notification) {
        NSLog("进入到后台")
    }
    
    func handleEnterForeground(_ notification : Notification) {
        NSLog("回到前台")
    }
}

