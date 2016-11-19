//
//  ViewController.m
//  DatePickerSample
//
//  Created by tonyguan on 2016/10/21.
//  Copyright © 2016年 关东升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIDatePicker *datePicker;
@property (strong, nonatomic) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    
    /// 1.日期选择器
    CGFloat datePickerWidth = 320;
    CGFloat datePickerHeight = 167;
    self.datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 0, datePickerWidth, datePickerHeight)];
    //zh-Hans简体中文
    self.datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh-Hans"];
    //设置日期时间模式
    self.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    
    [self.view addSubview:self.datePicker];
    
    /// 2.添加标签
    CGFloat labelWidth = 200;
    CGFloat labelHeight = 21;
    CGFloat labelTopView = 281;
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake((screen.size.width - labelWidth)/2 , labelTopView, labelWidth, labelHeight)];
    
    self.label.text = @"Label";
    //字体左右居中
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    
    /// 3.Button按钮
    UIButton* button= [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    
    CGFloat buttonWidth = 46;
    CGFloat buttonHeight = 30;
    CGFloat buttonTopView = 379;
    
    button.frame = CGRectMake((screen.size.width - buttonWidth)/2 , buttonTopView, buttonWidth, buttonHeight);
    //指定事件处理方法
    [button addTarget:self action:@selector(onclick:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)onclick:(id)sender {
    
    NSDate * theDate = self.datePicker.date;
    NSLog(@"the date picked is: %@", [theDate descriptionWithLocale:[NSLocale currentLocale]]);
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init] ;
    dateFormatter.dateFormat = @"YYYY-MM-dd HH:mm:ss";
    NSLog(@"the date formate is: %@", [dateFormatter stringFromDate:theDate]);
    self.label.text = [dateFormatter stringFromDate:theDate];
    
}

@end
