//
//  ViewController.m
//  IMJIETagView
//
//  Created by admin on 16/4/13.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ViewController.h"
#import "IMJIETagFrame.h"
#import "IMJIETagView.h"
@interface ViewController ()<IMJIETagViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColorRGBA(238, 238, 238, 1);
    
    NSArray *array = @[@"code4app",@"轻音少女",@"花季少女",@"我们仍未知道那天所看见的花的名字",@"华语",@"花有重开日",@"空之境界"];
    IMJIETagFrame *frame = [[IMJIETagFrame alloc] init];
    frame.tagsMinPadding = 4;
    frame.tagsMargin = 10;
    frame.tagsLineSpacing = 10;
    frame.tagsArray = array;
    
    IMJIETagView *tagView = [[IMJIETagView alloc] initWithFrame:CGRectMake(0, 30, SCREEN_WIDTH, frame.tagsHeight)];
    tagView.clickbool = YES;
    tagView.borderSize = 0.5;
    tagView.clickborderSize = 0.5;
    tagView.tagsFrame = frame;
    tagView.clickBackgroundColor = BACKGROUNDCOLOR;
    tagView.clickTitleColor = BACKGROUNDCOLOR;
    tagView.clickStart = 0;
    tagView.clickString = @"华语";//单选  tagView.clickStart 为0
    //    tagView.clickArray = @[@"误解向",@"我们仍未知道那天所看见的花的名字"];//多选 tagView.clickStart 为1
    tagView.delegate = self;
    [self.view addSubview:tagView];
}

#pragma mark 选中
-(void)IMJIETagView:(NSArray *)tagArray{
    
    NSLog(@"%@",tagArray);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
