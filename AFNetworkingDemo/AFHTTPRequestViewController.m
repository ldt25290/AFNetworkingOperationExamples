//
//  AFHTTPRequestViewController.m
//  AFNetworkingDemo
//
//  Created by Sam Watts on 24/03/2013.
//  Copyright (c) 2013 Sam Watts. All rights reserved.
//

#import "AFHTTPRequestViewController.h"

@interface AFHTTPRequestViewController ()

@end

@implementation AFHTTPRequestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.title = @"HTTP";
}

- (void)startRequest
{
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:[self request]];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        self.textView.text = [NSString stringWithFormat:@"%@", responseObject];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        self.textView.text = error.localizedDescription;
        
    }];
    
    [self.client enqueueHTTPRequestOperation:operation];
}

@end
