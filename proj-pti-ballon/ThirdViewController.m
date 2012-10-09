//
//  FirstViewController.m
//  proj-pti-ballon
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 Élèves. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void) modalViewControllerDidFinish:(ModalViewController *)viewController {
    
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    
    // Flip
    UIButton *flipButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [flipButton addTarget:self action:@selector(flipToModalView:) forControlEvents:UIControlEventTouchUpInside];
    [flipButton setFrame:CGRectMake(30, 30, 120, 30)];
    [flipButton setTitle:@"Flip" forState:UIControlStateNormal];
    [self.view addSubview:flipButton];
    // Recouvrement vertical
    UIButton *coverButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [coverButton addTarget:self action:@selector(coverToModalView:) forControlEvents:UIControlEventTouchUpInside];
    [coverButton setFrame:CGRectMake(170, 30, 120, 30)];
    [coverButton setTitle:@"Recouvrement" forState:UIControlStateNormal];
    [self.view addSubview:coverButton];
    // Fondu
    UIButton *dissolveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dissolveButton addTarget:self action:@selector(dissolveToModalView:) forControlEvents:UIControlEventTouchUpInside];
    [dissolveButton setFrame:CGRectMake(30, 80, 120, 30)];
    [dissolveButton setTitle:@"Fondu" forState:UIControlStateNormal];
    [self.view addSubview:dissolveButton];
    // Recouvrement partiel
    UIButton *curlButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [curlButton addTarget:self action:@selector(partialCurlToModalView:) forControlEvents:UIControlEventTouchUpInside];
    [curlButton setFrame:CGRectMake(170, 80, 120, 30)];
    [curlButton setTitle:@"Curl" forState:UIControlStateNormal];
    [self.view addSubview:curlButton];
    
    // Do any additional setup after loading the view from its nib.
}
- (void) flipToModalView:(id)sender {
    [self goToModalView:UIModalTransitionStyleFlipHorizontal]; }
- (void) coverToModalView:(id)sender {
    [self goToModalView:UIModalTransitionStyleCoverVertical]; }
- (void) dissolveToModalView:(id)sender {
    [self goToModalView:UIModalTransitionStyleCrossDissolve]; }
- (void) partialCurlToModalView:(id)sender {
    [self goToModalView:UIModalTransitionStylePartialCurl]; }

- (void)goToModalView:(UIModalTransitionStyle)transitionStyle {
    // Allocation d’une instance de SecondViewController
    ModalViewController *controller = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    // self est le Delegate
    controller.delegate = self;
    // On choisit l’animation selon le paramètre
    controller.modalTransitionStyle = transitionStyle;
    // On affiche le contrôleur
    [self presentModalViewController:controller animated:YES];
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
