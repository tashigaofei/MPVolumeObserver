//
//  ViewController.m
//  MPLovumeObserveDemo
//
//  Created by tashigaofei on 13-9-3.
//  Copyright (c) 2013年 . All rights reserved.
//

#import "ViewController.h"
#import "MPVolumeObserver.h"

@interface ViewController ()<MPVolumeObserverProtocol>

@end

@class AVSystemController;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [MPVolumeObserver sharedInstance].delegate = self;
    [[MPVolumeObserver sharedInstance] startObserveVolumeChangeEvents];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

-(void) volumeButtonDidClick:(MPVolumeObserver *) button;
{
    NSLog(@"change");
    
}

@end
