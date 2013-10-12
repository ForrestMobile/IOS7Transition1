//
//  CustomizedAnimator1.m
//  IOS7Transition1
//
//  Created by Shi Lin on 10/11/13.
//  Copyright (c) 2013 Forrest Shi. All rights reserved.
//

#import "CustomizedAnimator1.h"

@implementation CustomizedAnimator1

// This is used for percent driven interactive transitions, as well as for container controllers that have companion animations that might need to
// synchronize with the main animation.
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
    return .5;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
 

    fromVC.view.userInteractionEnabled = NO;
    //toVC.view.userInteractionEnabled = YES;
    
    [transitionContext.containerView addSubview:fromVC.view];
    [transitionContext.containerView addSubview:toVC.view];
    
    if (self.presenting) {
        

        
        [UIView animateWithDuration:.3 animations:^{
            //toVC.view.transform = CGAffineTransformTranslate(toVC.view.transform, 100., 100.);
            toVC.view.frame = CGRectMake(100., 0, 320, 480);
            fromVC.view.tintAdjustmentMode = UIViewTintAdjustmentModeDimmed;
        }completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }else{
    
        //fromVC.view.userInteractionEnabled = NO;
        toVC.view.userInteractionEnabled = YES;
        
        [transitionContext.containerView addSubview:toVC.view];
        [transitionContext.containerView addSubview:fromVC.view];

        
        [UIView animateWithDuration:.3 animations:^{
           //toVC.view.frame = CGRectZero;
            //toVC.view.alpha = 0;
            fromVC.view.backgroundColor = [UIColor blueColor];
            //toVC.view.backgroundColor = [UIColor grayColor];
            fromVC.view.frame = CGRectMake(200, 0, 320., 480.);
//            toVC.view.tintAdjustmentMode = UIViewTintAdjustmentModeAutomatic;
        }completion:^(BOOL finished) {
            //[transitionContext completeTransition:YES];
        }];
        
    }
    
   
}


@end
