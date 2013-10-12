//
//  EFDetailViewController.m
//  IOS7Transition1
//
//  Created by Shi Lin on 10/10/13.
//  Copyright (c) 2013 Forrest Shi. All rights reserved.
//

#import "EFDetailViewController.h"
#import "CustomizedAnimator1.h"

@interface EFDetailViewController ()<UIViewControllerTransitioningDelegate>
- (void)configureView;
@end

@implementation EFDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    [super prepareForSegue:segue sender:sender];
    NSLog(@"%s",__PRETTY_FUNCTION__);
    if ([segue.identifier isEqualToString:@"goto2"]) {
        NSLog(@"go to 2");
        
        UIViewController *toVC = segue.destinationViewController;
        toVC.transitioningDelegate = self;
        toVC.modalPresentationStyle = UIModalPresentationCustom;
        [UIView animateWithDuration:.3 animations:^{
            //toVC.view.backgroundColor = [UIColor magentaColor];
        }];
    }
}


- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    
    CustomizedAnimator1 *a1 = [CustomizedAnimator1 new];
    a1.presenting = YES;
    return a1;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    CustomizedAnimator1 *a1 = [CustomizedAnimator1 new];
    return a1;
}
@end
