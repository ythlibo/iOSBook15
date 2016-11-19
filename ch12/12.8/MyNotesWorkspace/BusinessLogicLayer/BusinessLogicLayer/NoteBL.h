//
//  NoteBL.h
//  MyNotes
//
//  Created by 关东升 on 12-9-11.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

#import <Foundation/Foundation.h>

#import <PersistenceLayer/NoteDAO.h>
#import <PersistenceLayer/Note.h>

@interface NoteBL : NSObject

//插入Note方法
- (NSMutableArray *)create:(Note *)model;

//删除Note方法
- (NSMutableArray *)remove:(Note *)model;

//查询所用数据方法
- (NSMutableArray *)findAll;


@end
