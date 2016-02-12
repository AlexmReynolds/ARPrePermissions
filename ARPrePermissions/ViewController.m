//
//  ViewController.m
//  ARPrePermissions
//
//  Created by Alex Reynolds on 2/4/16.
//  Copyright © 2016 Alex Reynolds. All rights reserved.
//

#import "ViewController.h"
#import "ARPrePermissionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ARPrePermissionViewController *pre = [[ARPrePermissionViewController alloc] init];
    
    [self addChildViewController:pre];
    [self.view addSubview:pre.view];
    pre.view.frame = self.view.bounds;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
