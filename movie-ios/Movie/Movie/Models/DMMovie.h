//
//  DMMovie.h
//  Movie
//
//  Created by Haoran Chen on 7/22/15.
//  Copyright (c) 2015 KiloApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMMovie : NSObject

@property (nonatomic, readwrite, assign) NSUInteger movieID;

@property (nonatomic, readwrite, copy) NSString *title;

@property (nonatomic, readwrite, assign) NSUInteger duration;

@property (nonatomic, readwrite, copy) NSString *type;

@property (nonatomic, readwrite, copy) NSString *director;

@property (nonatomic, readwrite, copy) NSString *cast;

@property (nonatomic, readwrite, copy) NSString *posterURL;

@property (nonatomic, readwrite, copy) NSString *story;

@property (nonatomic, readwrite, assign) NSUInteger rank;

@end
