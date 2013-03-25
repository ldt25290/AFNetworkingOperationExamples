//
//  ExampleRequestViewController.m
//  AFNetworkingDemo
//
//  Created by Sam Watts on 24/03/2013.
//  Copyright (c) 2013 Sam Watts. All rights reserved.
//

#import "ExampleRequestViewController.h"

@interface ExampleRequestViewController ()

@end

@implementation ExampleRequestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    UIBarButtonItem *startButton = [[UIBarButtonItem alloc] initWithTitle:@"Start" style:UIBarButtonItemStyleBordered target:self action:@selector(startRequest)];
    self.navigationItem.rightBarButtonItem = startButton;
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.backgroundColor = [UIColor clearColor];
    self.textView.font = [UIFont systemFontOfSize:17.0f];
    
    [self.view addSubview:self.textView];
}

- (NSURLRequest *)request
{
    return [self.client requestWithMethod:@"GET" path:@"/u/20184229/accounts.json" parameters:nil];
}

- (AFHTTPClient *)client
{
    if (!_client)
        _client = [AFHTTPClient clientWithBaseURL:[NSURL URLWithString:@"https://dl.dropbox.com/"]];
    
    return _client;
}

- (void)startRequest {}

@end
