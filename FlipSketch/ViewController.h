//
//  ViewController.h
//  FlipSketch
//
//  Created by Kevin Hampton on 10/2/12.
//  Copyright (c) 2012 Kevin Hampton. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PreviewTextView.h"
#import "SketchListView.h"

@interface ViewController : UIViewController {
  IBOutlet SketchListView* sketchList;
  IBOutlet PreviewTextView* previewTextView;
}

@property (nonatomic, retain) NSArray* flipSketches;

@end
