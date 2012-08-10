//
//  ViewController.m
//  YRDropdownViewExample
//
//  Created by Eli Perkins on 1/27/12.
//  Copyright (c) 2012 One Mighty Roar. All rights reserved.
//

#import "ViewController.h"
#import "YRDropdownView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize demoView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDemoView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showInView:(id)sender {
    [YRDropdownView showDropdownInView:self.view
                             title:@"No internet connection!"
                            detail:@"Check your network settings"
                             image:[UIImage imageNamed:@"dropdown-alert"]
                          animated:YES
                         hideAfter:1.2];
}

- (IBAction)showInWindow:(id)sender {
    [YRDropdownView showDropdownInView:self.view.window 
                               title:@"Warning"
                              detail:nil
                                 image:[UIImage imageNamed:@"dropdown-alert"]
                            animated:NO
                           hideAfter:2.0];
}

- (IBAction)hide:(id)sender {
    [YRDropdownView hideDropdownInView:demoView animated:YES];
}
- (void)dealloc {
    [demoView release];
    [super dealloc];
}
@end
