//
//  EFDetailViewController.h
//  IOS7Transition1
//
//  Created by Shi Lin on 10/10/13.
//  Copyright (c) 2013 Forrest Shi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EFDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
