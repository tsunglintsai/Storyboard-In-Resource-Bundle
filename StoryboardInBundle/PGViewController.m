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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClicked:(id)sender {
    
    //NSBundle *resourceBundle = [NSBundle mainBundle];
    //NSBundle *resourceBundle = [NSBundle bundleWithIdentifier:@"bundlefilename.bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"bundlefilename" ofType:@"bundle"]];
    
    NSBundle *settingBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"]];
    
    [resourceBundle load];
    
    
    NSLog(@"resourceBundle:%@",resourceBundle);
    NSLog(@"settingBundle:%@",settingBundle);
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"StoryboardA" bundle:resourceBundle];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"myViewController"];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:NULL];
}

@end
