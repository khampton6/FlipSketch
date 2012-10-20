//
//  ShapePoint.m
//  FlipSketch
//
//  Created by Brandon Headrick on 10/6/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "ShapePoint.h"
#import "Shape.h"

@implementation ShapePoint

@synthesize x, y, owner;

-(id) initWithX: (int) xPos withY: (int) yPos withOwner:(Shape*) shapeOwner {
  self = [super init];
  if(self) {
    self.x = xPos;
    self.y = yPos;
    self.owner = shapeOwner;
  }
  return self;
}

-(void) draw:(CGContextRef) context {
  CGContextSetLineWidth(context, 4);
  CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
  
  CGRect rect = CGRectMake(x-2, y-2, 8, 8);
  CGContextAddRect(context, rect);
  CGContextStrokePath(context);
}

@end
