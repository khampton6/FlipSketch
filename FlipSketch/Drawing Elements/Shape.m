//
//  Shape.m
//  FlipSketch
//
//  Created by Brandon Headrick on 10/6/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (id)init{
    self = [super init];
    if(self){
        xPos = 0;
        yPos = 0;
        _tForm = NULL;
        _sPoint = NULL;
        
    }
    return self;
}

- (id)initWithX: (int)x withY: (int)y {
    xPos = x;
    yPos = y;
    _tForm = NULL;
    _sPoint = NULL;
    
    return self;
}



@end
