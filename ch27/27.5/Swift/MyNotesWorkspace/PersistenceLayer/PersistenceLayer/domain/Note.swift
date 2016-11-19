//
//  Note.swift
//  PersistenceLayer
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

import Foundation

public class Note {

    public var ID: String
    public var date: String
    public var content: String
    
    public init(id: String, date: String, content: String) {
        self.ID = id
        self.date = date
        self.content = content
    }
    
    public init() {
        self.date = ""
        self.content = ""
        self.ID = ""
    }
}
