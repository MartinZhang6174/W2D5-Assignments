//
//  ViewController.m
//  Finger Paint
//
//  Created by Martin Zhang on 2016-07-08.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()

@property UIBezierPath *drawingPath;
@property CGPoint fingerBeginningLocation;
@property CGPoint fingerChangedLocation;
@property CGPoint fingerEndedLocation;
@property CGPoint slidingFingerLocation;
@property CGFloat slidingXLocation;
@property (strong, nonatomic) IBOutlet DrawingView *drawingView;
@property (strong, nonatomic) IBOutlet UIView *colorDisplayingView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.drawingPath = [[UIBezierPath alloc] init];
    DrawingView *drawingView = [[DrawingView alloc] initWithFrame:self.view.bounds];
    drawingView.backgroundColor = [UIColor blackColor];
    self.colorDisplayingView.backgroundColor = [UIColor redColor];
    [self.view addSubview:drawingView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)panGestureInitiated:(id)sender {
    UIGestureRecognizer *panDraggingGestureRecognizer = sender;
    
    switch (panDraggingGestureRecognizer.state) {
        {
        case UIGestureRecognizerStateBegan:
            NSLog(@"Gesture detected.");
            self.fingerBeginningLocation = [panDraggingGestureRecognizer locationInView:self.view];
            self.drawingView.initialFingerXLocation = self.fingerBeginningLocation.x;
            self.drawingView.initialFingerYLocation = self.fingerBeginningLocation.y;
//            [self.drawingPath moveToPoint:self.fingerBeginningLocation];
            [self.drawingView setNeedsDisplay];
            break;
        }
//        {
//        case UIGestureRecognizerStateChanged:
//            NSLog(@"Gesture changed.");
//            self.fingerChangedLocation = [panDraggingGestureRecognizer locationInView:self.view];
//            self.drawingView.changedFingerXLocation = self.fingerChangedLocation.x;
//            self.drawingView.changedFingerYLocation = self.fingerChangedLocation.y;
////            [self.drawingPath addLineToPoint:self.fingerChangedLocation];            
//            [self.drawingView setNeedsDisplay];
//            break;
//        }
        {
        case UIGestureRecognizerStateEnded:
            NSLog(@"Gesture ended.");
            self.fingerEndedLocation = [panDraggingGestureRecognizer locationInView:self.view];
            self.drawingView.endedFingerXLocation = self.fingerEndedLocation.x;
            self.drawingView.endedFingerYLocation = self.fingerEndedLocation.y;
//            [self.drawingPath addLineToPoint:self.fingerEndedLocation];
            [self.drawingView setNeedsDisplay];
            break;
        }
        default:
            break;
    }
}

- (IBAction)colorChangingSlider:(id)sender {
    UIGestureRecognizer *slidingGestureRecognizer = sender;
    
    switch (slidingGestureRecognizer.state) {
        case UIGestureRecognizerStateBegan:
//            self.slidingFingerLocation = [slidingGestureRecognizer locationInView:self.view];
//            self.slidingXLocation = self.slidingFingerLocation.x;
//            NSLog(@"%f", _slidingXLocation);
            NSLog(@"The sliding began.");
            break;
            
        default:
            break;
    }
}

@end
