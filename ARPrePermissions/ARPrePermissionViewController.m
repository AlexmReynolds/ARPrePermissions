//
//  ARPrePermissionViewController.m
//  ARPrePermissions
//
//  Created by Alex Reynolds on 2/4/16.
//  Copyright © 2016 Alex Reynolds. All rights reserved.
//

#import "ARPrePermissionViewController.h"

@interface ARPrePermissionViewController ()
@property (weak, nonatomic) IBOutlet UIView *permissionAlertView;
@property (weak, nonatomic) IBOutlet UILabel *permissionAlertDontAllow;
@property (weak, nonatomic) IBOutlet UILabel *permissionAlertAllow;
@property (weak, nonatomic) IBOutlet UILabel *permissionAlertBody;
@property (weak, nonatomic) IBOutlet UILabel *permissionAlertTitle;

@property (weak, nonatomic) IBOutlet UILabel *prepermissionBody;
@property (weak, nonatomic) IBOutlet UILabel *prepermissionTitle;
@property (weak, nonatomic) IBOutlet UIButton *allowButton;
@property (weak, nonatomic) IBOutlet UIButton *denyButton;
@property (weak, nonatomic) IBOutlet UIView *prepermissionCard;
@property (weak, nonatomic) IBOutlet UIView *container;

@end

@implementation ARPrePermissionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.permissionAlertView.layer.cornerRadius = 8.0f;
    self.prepermissionCard.layer.cornerRadius = 8.0;
    self.allowButton.layer.cornerRadius = 4.0;
    self.allowButton.backgroundColor = self.view.tintColor;
    
    self.denyButton.layer.cornerRadius = 4.0;
    self.denyButton.layer.borderWidth = 1.0;
    self.denyButton.backgroundColor = [UIColor clearColor];
    self.denyButton.layer.borderColor = [UIColor colorWithWhite:0.9 alpha:1.0].CGColor;
    if (self.title)
        self.prepermissionTitle.text = self.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)allowPressed:(id)sender {
    if (self.optionSelectedBlock) { self.optionSelectedBlock(YES);}
}

- (IBAction)denyPressed:(id)sender {
    if (self.optionSelectedBlock) { self.optionSelectedBlock(NO);}

}
@end
