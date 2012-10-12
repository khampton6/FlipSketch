//
//  SketchListView.m
//  FlipSketch
//
//  Created by Kevin Hampton on 10/6/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "SketchListView.h"
#import "FlipSketchIO.h"

@implementation SketchListView

const int SKETCHNODEWIDTH = 200;
const int SKETCHNODEHEIGHT = 100;

const int SKETCHNODESPACINGY = 40;
const int SKETCHNODESPACINGX = 40;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) setSketches:(NSArray *)slist {
  sketches = slist;
  
  //Need to resize view
  int selfWidth = SKETCHNODEWIDTH * [sketches count] + SKETCHNODESPACINGX;
  int selfHeight = SKETCHNODEHEIGHT + SKETCHNODESPACINGY;
  [self setContentSize:CGSizeMake(selfWidth, selfHeight)];
  
  //Add represent tiles
  int startX = 10;
  int startY = 10;

  UIImageView* newSketch = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 240, 100)];
  UIImage* newImage = [FlipSketchIO readNewImage];
  [newSketch setImage:newImage];
  [self addSubview:newSketch];
  return;
  
  for(int i = 0; i < [sketches count]; i++) {
    UIImageView* img = [[UIImageView alloc] initWithFrame:CGRectMake((i+1)*startX,startY, 240,100)];
    [img setBackgroundColor:[UIColor whiteColor]];
    
    [self addSubview: img];
  }
  
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
  for(int i = 0; i < [sketches count]; i++) {
    
  }
}*/


@end
