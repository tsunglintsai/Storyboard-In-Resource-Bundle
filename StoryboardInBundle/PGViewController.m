//
//  PGViewController.m
//  StoryboardInBundle
//
//  Created by Henry on 11/17/13.
//  Copyright (c) 2013 Pyrogusto Inc. All rights reserved.
//

#import "PGViewController.h"

@interface PGViewController ()

@end

@implementation PGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClicked:(id)sender {
    
    //NSBundle *resourceBundle = [NSBundle mainBundle];
    //NSBundle *resourceBundle = [NSBundle bundleWithIdentifier:@"bundlefilename.bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"bundlefilename" ofType:@"bundle"]];
    [resourceBundle load];
    NSLog(@"resourceBundle:%@",resourceBundle);
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"StoryboardA" bundle:resourceBundle];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"myViewController"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:NULL];
}

@end
