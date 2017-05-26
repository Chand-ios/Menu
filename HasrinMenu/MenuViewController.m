//
//  MenuViewController.m
//  HasrinMenu
//
//  Created by Rajashekhar on 20/04/17.
//  Copyright © 2017 apple. All rights reserved.
//

#import "MenuViewController.h"
#import "ViewController.h"
#import "REFrostedViewController.h"
#import "ProfileViewController.h"
#import "ContactUsViewController.h"
#import "FeedbackViewController.h"
#import "SettingsViewController.h"
#import "PasswordViewController.h"
#import "AboutUsViewController.h"
@interface MenuViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray*MenuArr;
    NSArray*imgAr;
}
@property (weak, nonatomic) IBOutlet UITableView *menuTbl;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MenuArr=[NSArray arrayWithObjects:@"Home",@"Profile",@"Contact Us",@"Change Password",@"Settings",@"About Us",@"Feedback", nil];
    imgAr=[NSArray arrayWithObjects:@"a",@"2",@"3",@"4",@"5",@"6",@"7", nil];
    _menuTbl.delegate=self;
    _menuTbl.dataSource=self;
    // Do any additional setup after loading the view from its nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return MenuArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    UILabel*nameLbl=[[UILabel alloc]initWithFrame:CGRectMake(50, 10, 200, 20)];
    nameLbl.text=[MenuArr objectAtIndex:indexPath.row];
    [cell addSubview:nameLbl];
    
    UIImageView*img=[[UIImageView alloc]initWithFrame:CGRectMake(5, 10, 30, 30)];
    img.image=[UIImage imageNamed:[imgAr objectAtIndex:indexPath.row]];
    [cell addSubview:img];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_menuTbl deselectRowAtIndexPath:indexPath animated:YES];
    UINavigationController *navigationController;

    if (indexPath.row==0) {
        ViewController*navTo=[[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==1) {
        ProfileViewController*navTo=[[ProfileViewController alloc]initWithNibName:@"ProfileViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==2) {
        ContactUsViewController*navTo=[[ContactUsViewController alloc]initWithNibName:@"ContactUsViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==3) {
        PasswordViewController*navTo=[[PasswordViewController alloc]initWithNibName:@"PasswordViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==4) {
        SettingsViewController*navTo=[[SettingsViewController alloc]initWithNibName:@"SettingsViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==5) {
        AboutUsViewController*navTo=[[AboutUsViewController alloc]initWithNibName:@"AboutUsViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    if (indexPath.row==6) {
        FeedbackViewController*navTo=[[FeedbackViewController alloc]initWithNibName:@"FeedbackViewController" bundle:nil];
        navigationController= [[UINavigationController alloc] initWithRootViewController:navTo];
    }
    navigationController.navigationBarHidden=YES;
    self.frostedViewController.contentViewController = navigationController;
    [self.frostedViewController hideMenuViewController];

    
    
}
@end
