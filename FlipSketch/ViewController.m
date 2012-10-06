//
//  ViewController.m
//  FlipSketch
//
//  Created by Kevin Hampton on 10/2/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize flipSketches;

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  FlipSketch* sketch = [[FlipSketch alloc] init];
  [sketch setName:@"New Sketch"];
  [sketch setDescription:@"Press the Start Sketching button below to start sketching!"];
  [sketch setNumPages:0];
  
  flipSketches = [[NSMutableArray alloc] initWithObjects:sketch, nil ];
  [self setSketch:sketch];
  [sketchList setSketches: flipSketches];
}

-(void) setSketch:(FlipSketch*) sketch {
  
  [nameLabel setText:[sketch name]];
  
  NSString* pagesStr = [NSString stringWithFormat:@"%d", [sketch numPages]];
  [pagesLabel setText: pagesStr];
  
  [previewTextView setText: [sketch description]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
