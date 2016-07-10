//
//  DrawingView.h
//  Finger Paint
//
//  Created by Martin Zhang on 2016-07-08.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingView : UIView

@property float initialFingerXLocation;
@property float initialFingerYLocation;
@property float changedFingerXLocation;
@property float changedFingerYLocation;
@property float endedFingerXLocation;
@property float endedFingerYLocation;

@end
