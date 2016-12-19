//
//  CustomTabbar.m
//  testTabPgm
//
//  Created by Paramswar on 19/12/16.
//  Copyright © 2016 MTPL. All rights reserved.
//

#import "CustomTabbar.h"

@interface CustomTabbar ()

@end

@implementation CustomTabbar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
}

- (void)tabBarController:(UITabBarController *)tabBarController
 didSelectViewController:(UIViewController *)viewController
{
//    NSLog(@"controller class: %@", NSStringFromClass([viewController class]));
    NSLog(@"controller title: %@", viewController.title);
    
    if (viewController == tabBarController.moreNavigationController)
    {
        tabBarController.moreNavigationController.delegate = self;
    }
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"more controller title: %@", viewController.title);

//    if (navigationController == self.tabBarController.moreNavigationController)
    if ([viewController.title isEqualToString:@"FIVE"])
    {
        NSLog(@"more controller class: %@", NSStringFromClass([viewController class]));
        NSLog(@"more controller title: %@", viewController.title);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
