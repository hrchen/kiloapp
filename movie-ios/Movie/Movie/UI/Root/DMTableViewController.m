//
//  DMTableViewController.m
//  Movie
//
//  Created by Haoran Chen on 5/12/15.
//  Copyright (c) 2015 KiloApp. All rights reserved.
//

#import "DMTableViewController.h"

@interface DMTableViewController ()

@end

@implementation DMTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView = tableView;
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    [self.view setAutoresizesSubviews:YES];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}

@end
