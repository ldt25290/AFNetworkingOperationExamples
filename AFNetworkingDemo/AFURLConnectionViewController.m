//
//  AFURLConnectionViewController.m
//  AFNetworkingDemo
//
//  Created by Sam Watts on 24/03/2013.
//  Copyright (c) 2013 Sam Watts. All rights reserved.
//

#import "AFURLConnectionViewController.h"

@interface AFURLConnectionViewController ()

@end

@implementation AFURLConnectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"URL";
}

- (void)startRequest
{
    AFURLConnectionOperation *operation = [[AFURLConnectionOperation alloc] initWithRequest:[self request]];
    
    [operation start];
    [operation waitUntilFinished];
    
    self.textView.text = [NSString stringWithFormat:@"%@", operation.responseData];
}

@end
