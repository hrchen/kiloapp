//
//  DMComment.h
//  Movie
//
//  Created by Haoran Chen on 7/22/15.
//  Copyright (c) 2015 KiloApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMComment : NSObject

@property (nonatomic, readwrite, assign) NSUInteger commentID;

@property (nonatomic, readwrite, copy) NSString *content;

@property (nonatomic, readwrite, assign) long postAt;

@property (nonatomic, readwrite, assign) BOOL isUp;

@property (nonatomic, readwrite, assign) long upAmount;


@end
