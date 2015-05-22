//
//  DMHomeViewController.m
//  Movie
//
//  Created by Haoran Chen on 5/10/15.
//  Copyright (c) 2015 KiloApp. All rights reserved.
//

#import "DMHomeViewController.h"

typedef enum {
    MovieSegment_Theater = 0,
    MovieSegment_Upcoming
} MovieSegment;

@interface DMHomeViewController ()

@property (nonatomic, readwrite, strong) UIViewController *currentViewController;

@end

@implementation DMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *segmentTextContent = @[
                                    NSLocalizedString(@"上映中", @""),
                                    NSLocalizedString(@"即将上映", @""),
                                    ];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:segmentTextContent];
    segmentedControl.selectedSegmentIndex = 0;
    segmentedControl.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    segmentedControl.frame = CGRectMake(0, 0, 200.0f, 30.0f);
    [segmentedControl addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    
    self.navigationItem.titleView = segmentedControl;
    
    UIViewController *viewController = [self viewControllerForSegmentIndex:segmentedControl.selectedSegmentIndex];
    [self addChildViewController:viewController];
    viewController.view.frame = self.view.bounds;
    [self.view addSubview:viewController.view];
    self.currentViewController = viewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - private methods
- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    UIViewController *viewController = [self viewControllerForSegmentIndex:sender.selectedSegmentIndex];
    [self addChildViewController:viewController];
    [self transitionFromViewController:self.currentViewController toViewController:viewController duration:0.5 options:UIViewAnimationOptionAllowAnimatedContent animations:^{
        [self.currentViewController.view removeFromSuperview];
        viewController.view.frame = self.view.bounds;
        [self.view addSubview:viewController.view];
    } completion:^(BOOL finished) {
        [viewController didMoveToParentViewController:self];
        [self.currentViewController removeFromParentViewController];
        self.currentViewController = viewController;
    }];
}

- (UIViewController *)viewControllerForSegmentIndex:(NSInteger)index {
    UIViewController *viewController;
    switch (index) {
        case MovieSegment_Theater:
            viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DMTheaterMovieViewController"];
            break;
        case MovieSegment_Upcoming:
            viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DMUpcomingMovieViewController"];
            break;
    }
    return viewController;
}


@end
