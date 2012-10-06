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
        _xPos = 0;
        _yPos = 0;
        _tForm = NULL;
        _sPoint = NULL;
        
    }
    return self;
}

- (id)initWithX: (int)x withY: (int)y {
    _xPos = x;
    _yPos = y;
    _tForm = NULL;
    _sPoint = NULL;
    
    return self;
}



@end
