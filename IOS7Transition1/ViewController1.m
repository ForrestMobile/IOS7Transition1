//
//  ViewController1.m
//  IOS7Transition1
//
//  Created by Shi Lin on 10/11/13.
//  Copyright (c) 2013 Forrest Shi. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

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
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
    
    
    

}

- (void)onTap:(UITapGestureRecognizer*)gesture{
    
//    [self dismissViewControllerAnimated:YES completion:^{
//        
//    }];
    
//    [self.presentingViewController dismissViewControllerAnimated:NO completion:^{
//        
//    }];
}

- (IBAction)tapme:(id)sender{

//    [self dismissViewControllerAnimated:YES completion:^{
//        
//    }];
    
//    [self.presentingViewController dismissViewControllerAnimated:NO completion:^{
//        
//    }];
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
