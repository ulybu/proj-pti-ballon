//
//  ThirdViewController.h
//  proj-pti-ballon
//
//  Created by Élèves on 09/10/12.
//  Copyright (c) 2012 Élèves. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ModalViewControllerDelegate
@end

@interface ModalViewController : UIViewController{

UINavigationController *_navigationController;
}
@property (nonatomic, assign) id <ModalViewControllerDelegate> delegate;
@end
