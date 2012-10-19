//
//  Drawing.h
//  FlipSketch
//
//  Created by Brandon Headrick on 10/12/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Drawing <NSObject>

- (void)draw:(CGContextRef)context;

@end

@interface Drawing : NSObject

@end