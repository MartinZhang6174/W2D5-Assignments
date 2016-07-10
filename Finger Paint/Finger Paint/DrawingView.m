//
//  DrawingView.m
//  Finger Paint
//
//  Created by Martin Zhang on 2016-07-08.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (void)drawRect:(CGRect)rect {

    UIBezierPath *path = [[UIBezierPath alloc] init];
  
    [path moveToPoint:(CGPointMake(self.initialFingerXLocation, self.initialFingerYLocation))];
    [path addLineToPoint:(CGPointMake(self.endedFingerXLocation, self.endedFingerYLocation))];
//    [path addLineToPoint:(CGPointMake(self.endedFingerXLocation, self.endedFingerYLocation))];
//    [path closePath];

    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    [[UIColor redColor] setStroke];
    [path stroke];

}

@end
