//
//  RootViewController.m
//  AFNetworkingDemo
//
//  Created by Sam Watts on 24/03/2013.
//  Copyright (c) 2013 Sam Watts. All rights reserved.
//

#import "RootViewController.h"

#define kExampleTitles @[@"AFURLConnectionOperation", @"AFHTTPRequestOperation", @"AFJSONRequestOperation"]
#define kExampleViewControllers @[@"AFURLConnectionViewController", @"AFHTTPRequestViewController", @"AFJSONRequestViewController"]

@interface RootViewController ()

@end

@implementation RootViewController

static NSString *CellIdentifier = @"Cell";

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"AFNetworking";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [kExampleTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = kExampleTitles[indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *controller = [[NSClassFromString(kExampleViewControllers[indexPath.row]) alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
