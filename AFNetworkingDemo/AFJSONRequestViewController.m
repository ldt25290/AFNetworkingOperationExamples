//
//  AFJSONRequestViewController.m
//  AFNetworkingDemo
//
//  Created by Sam Watts on 24/03/2013.
//  Copyright (c) 2013 Sam Watts. All rights reserved.
//

#import "AFJSONRequestViewController.h"

@interface AFJSONRequestViewController ()

@end

@implementation AFJSONRequestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.title = @"JSON";
}

- (void)startRequest
{    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:[self request] success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        self.textView.text = [NSString stringWithFormat:@"%@", JSON];
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
        
        self.textView.text = [NSString stringWithFormat:@"%@", error.localizedDescription];
        
    }];
    
    [self.client enqueueHTTPRequestOperation:operation];
}

@end
