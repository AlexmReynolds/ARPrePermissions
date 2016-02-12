//
//  ARPrePermissionViewController.h
//  ARPrePermissions
//
//  Created by Alex Reynolds on 2/4/16.
//  Copyright © 2016 Alex Reynolds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ARPrePermissionViewController : UIViewController
@property (nonatomic, strong) NSString *yesButtonText;
@property (nonatomic, strong) NSString *noButtonText;
@property (nonatomic, strong) NSString *message;

// The following are for the example of what the permission modal will look like
@property (nonatomic, strong) NSString *exampleDontAllowButtonText;
@property (nonatomic, strong) NSString *exampleAllowButtonText;
@property (nonatomic, strong) NSString *exampleTitle;
@property (nonatomic, strong) NSString *exampleMesaage;

@property (nonatomic, copy) void (^optionSelectedBlock)(BOOL allowed);

@end
