//
//  Rectangle.m
//  FlipSketch
//
//  Created by Brandon Headrick on 10/6/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

- (id)initWithX:(int)x withY:(int)y {
    self = [super initWithX: x withY: y];
    
    return self;
}


-(void) draw:(CGContextRef) context {
    
//    UIColor *color = [UIColor colorWithRed:0.0-1.0 green:0.0-1.0 blue:0.0-1.0 alpha:1.0f];
    
    CGContextSetLineWidth(context, 4);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    
    CGRect rect = CGRectMake(xPos, yPos, width, height);
    CGContextAddRect(context, rect);
    CGContextStrokePath(context);
}



//
//- (void)drawRect:(CGRect)rect {
//
//    if(touch != nil){
//        CGContextRef context = UIGraphicsGetCurrentContext();
//        
//
//        UIColor *color = [UIColor colorWithHue:hue saturation:0.7 brightness:1.0 alpha:1.0];
//        
//        CGContextSetStrokeColorWithColor(context, [color CGColor]);
//        CGContextSetLineCap(context, kCGLineCapRound);
//        CGContextSetLineWidth(context, 15);
//        
//        CGPoint lastPoint = [touch previousLocationInView:self];
//        CGPoint newPoint = [touch locationInView:self];
//        
//        CGContextMoveToPoint(context, lastPoint.x, lastPoint.y);
//        CGContextAddLineToPoint(context, newPoint.x, newPoint.y);
//        CGContextStrokePath(context);
//    }
//
//
//}

@end
