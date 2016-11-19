//
//  ViewController.swift
//  DelegatePattern
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

class ViewController: UIViewController, PhilosopherDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tom = Philosopher()
        tom.delegate = self
        tom.start()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: --实现PhilosopherDelegate委托方法
    func sleep() {
        NSLog("sleep...")
    }
    
    func eat() {
        NSLog("eat...")
    }
    
    func work() {
        NSLog("work...")
    }
}

