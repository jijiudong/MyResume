//
//  ViewController.m
//  MyResume
//
//  Created by Jerod on 16/11/1.
//  Copyright © 2016年 Jerod. All rights reserved.
//

#import "ViewController.h"
#import "JerodResume.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JerodResume* res = [[JerodResume alloc] init];
    DataModel* data = res.Jerod;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
