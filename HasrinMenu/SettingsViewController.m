//
//  SettingsViewController.m
//  HasrinMenu
//
//  Created by Rajashekhar on 20/04/17.
//  Copyright © 2017 apple. All rights reserved.
//

#import "SettingsViewController.h"
#import "AppDelegate.h"
@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)menu:(id)sender {


[self.view endEditing:YES];
[self.frostedViewController.view endEditing:YES];
[self.frostedViewController presentMenuViewController];
}
@end
