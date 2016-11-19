//
//  ViewController.m
//  SimpleTable
//
//  Created by tonyguan on 2016/10/23.
//  Copyright © 2016年 关东升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *listTeams;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"team"
                                           ofType:@"plist"];
    //获取属性列表文件中的全部数据
    self.listTeams = [[NSArray alloc] initWithContentsOfFile:plistPath];
}

#pragma mark --UITableViewDataSource 协议方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listTeams count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    NSUInteger row = [indexPath row];
    
    NSDictionary *rowDict = self.listTeams[row];
    cell.textLabel.text = rowDict[@"name"];
    
    NSString *imagePath = [[NSString alloc] initWithFormat: @"%@.png", rowDict[@"image"]];
    cell.imageView.image = [UIImage imageNamed:imagePath];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

@end

