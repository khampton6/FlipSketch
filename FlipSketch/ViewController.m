//
//  ViewController.m
//  FlipSketch
//
//  Created by Kevin Hampton on 10/2/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import "ViewController.h"

#import "FlipSketch.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize flipSketches;

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  FlipSketch* sketch = [[FlipSketch alloc] init];
  [sketch setName:@"New Page"];
  [sketch setDescription:@"Press the Start Sketching button below to start sketching!"];
  [sketch setNumPages:0];
  
  flipSketches = [[NSMutableArray alloc] initWithObjects:sketch, nil ];
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
