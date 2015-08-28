//
//  DMCollectionViewController.m
//  Movie
//
<<<<<<< HEAD
//  Created by Haoran Chen on 8/16/15.
=======
//  Created by Haoran Chen on 8/26/15.
>>>>>>> Add collection view.
//  Copyright (c) 2015 KiloApp. All rights reserved.
//

#import "DMCollectionViewController.h"

@interface DMCollectionViewController ()

@end

@implementation DMCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< HEAD
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

=======
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds];
    self.collectionView = collectionView;
    [self.view addSubview:self.collectionView];
    self.collectionView.frame = self.view.bounds;
    [self.view setAutoresizesSubviews:YES];
}

>>>>>>> Add collection view.
@end
