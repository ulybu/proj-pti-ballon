//
//  AppDelegate.m
//  proj-pti-ballon
//
//  Created by Élèves on 03/10/12.
//  Copyright (c) 2012 Élèves. All rights reserved.
//

#import "AppDelegate.h"
#import "ThirdViewController.h" 
#import "SecondViewController.h" 
#import "ModalViewController.h"
#import "FourthViewController.h"
#import "FirstViewController.h"
#import "SixthViewController.h"

@implementation AppDelegate

@synthesize tabBarController=_tabBarController;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
//    self.tabBarController= [[UITabBarController alloc] init];
//
//    ThirdViewController *thirdViewController = [[ThirdViewController alloc] initWithNibName:@"thirdViewController" bundle:nil];
//    thirdViewController.title = @"third";
//    
//    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
//    navigationController.title = @"Deuxième";
//    [navigationController setNavigationBarHidden:NO];
//
//    ModalViewController *modalViewController = [[ModalViewController alloc] initWithNibName:@"modalViewController" bundle:nil];
//    modalViewController.title = @"modal";
    
   // FourthViewController *fourthViewController = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    //fourthViewController.title = @"Quatrième";
    
   // FirstViewController *fifthViewController = [[FirstViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
   // UITabBarItem *tabBarItemFifth = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:5];
   // fifthViewController.tabBarItem = tabBarItemFifth;
    //fifthViewController.title = @"Cinquième";
    
    ////SixthViewController *sixthViewController = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    UITabBarItem *tabBarItemSixth = [[UITabBarItem alloc] initWithTitle:@"Sixième" image:[UIImage imageNamed:@"18-envelope.png"] tag:6];
    //sixthViewController.tabBarItem = tabBarItemSixth;
    //sixthViewController.title = @"Sixième";
    
    
    
//    _tabBarController.viewControllers = [NSArray arrayWithObjects:firstViewController, fourthViewController,fifthViewController, thirdViewController,navigationController, sixthViewController, nil];
    
//    [self.window setRootViewController:_tabBarController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
