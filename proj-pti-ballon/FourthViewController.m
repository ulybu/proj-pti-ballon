//
//  FourthViewController.m
//  proj-pti-ballon
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 Élèves. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // On met le badge à la valeur 0 self.tabBarItem.badgeValue = @"0";
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(30, 30, 100, 30)];
    [button setTitle:@"++" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(addBadgeValue:)forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    // Do any additional setup after loading the view from its nib.
}
- (void) addBadgeValue:(id)sender {
    // On récupère la valeur du badge
    NSInteger theInteger = [self.tabBarItem.badgeValue integerValue]; // On incrémente la valeur
    theInteger++;
    // On affiche cette nouvelle valeur
    self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d", theInteger];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
