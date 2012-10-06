//
//  Shape.h
//  FlipSketch
//
//  Created by Brandon Headrick on 10/6/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transformation.h"
#import "ShapePoint.h"

@interface Shape : NSObject

@property int xPos;
@property int yPos;
@property (strong) Transformation* tForm;
@property (strong) ShapePoint* sPoint;

@end
