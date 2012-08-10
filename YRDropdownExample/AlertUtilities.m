//
//  AlertUtilities.m
//  YRDropdownExample
//
//  Created by Karlo Kristensen on 10/08/12.
//  Copyright (c) 2012 One Mighty Roar. All rights reserved.
//

#import "AlertUtilities.h"

@implementation AlertUtilities

+ (void) showConnectionAlert
{
    [YRDropdownView showDropdownInView:[[[UIApplication sharedApplication] windows] lastObject]
                                 title:@"No internet connection"
                                detail:@"Chech your connection settings and some long text to text if the view adjusts to the size of the text"
                                 image:[UIImage imageNamed:@"dropdown-alert"]
                              animated:YES
                             hideAfter:1.2];
}

+(void) showFailureAlert
{
    [YRDropdownView showDropdownInView:[[[UIApplication sharedApplication] windows] lastObject]
                                 title:@"Something went wrong"
                                detail:@"Please try again"
                                 image:[UIImage imageNamed:@"dropdown-alert"]
                              animated:YES
                             hideAfter:1.2];
}


@end
