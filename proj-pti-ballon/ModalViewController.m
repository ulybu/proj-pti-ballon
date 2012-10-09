//
//  ThirdViewController.m
//  proj-pti-ballon
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 Élèves. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

@synthesize delegate = _delegate;

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
    //Construction du bouton pour aller dans le Navigation controller
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(goToFirstView:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(80, 400, 180, 30)];
    [button setTitle:@"Navigation Controller" forState:UIControlStateNormal];
    [self.view addSubview:button];    // Do any additional setup after loading the view from its nib.
}
- (void) goToFirstView:(id)sender {
    if (!_navigationController)  {
        FirstViewController *firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
        _navigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    }
    [self presentModalViewController:_navigationController animated:YES];
}
- (void)retourToMain:(id)sender {
    // Informe le Delegate que l’on souhaite se retirer
    [self.delegate modalViewControllerDidFinish:self];
}


- (void) selectFirstViewControllerOfListe:(id)sender {
    UITabBarController *tabController = self.tabBarController; // Sélection de l’onglet le plus à gauche
    tabController.selectedIndex = 0;
}

- (void) selectFirstViewController:(id)sender {
    UITabBarController *tabController = self.tabBarController;
    // Retrouver le contrôleur de la classe FirstViewController
    // On parcourt le tableau des contrôleurs
    UIViewController *controllerToSelect = nil;
    for (UIViewController *controller in tabController.viewControllers)
        if([controller isKindOfClass:NSClassFromString(@"FirstViewController")]) {
            controllerToSelect = controller;
            break; // On sort de la boucle
        }
            tabController.selectedViewController = controllerToSelect;
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
