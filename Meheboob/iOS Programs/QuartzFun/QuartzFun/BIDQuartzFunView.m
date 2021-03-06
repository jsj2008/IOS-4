//
//  BIDQuartzFunView.m
//  QuartzFun
//
//  Created by Mahaboobsab Nadaf on 03/06/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "BIDQuartzFunView.h"
#import "UIColor+BIDRandom.h"
#import "BIDConstants.h"
#import "BIDQuartzFunView.h"

@interface BIDQuartzFunView ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorControl;
- (IBAction)changeColor:(UISegmentedControl *)sender;
- (IBAction)changeShape:(id)sender;
@end
@implementation BIDQuartzFunView






- (IBAction)changeColor:(UISegmentedControl *)sender {
    
    UISegmentedControl *control = sender;
    ColorTabIndex index = [control selectedSegmentIndex];
    
    BIDQuartzFunView *funView = (BIDQuartzFunView *)self.subviews;
    switch (index) {
        case kRedColorTab:
            funView.currentColor = [UIColor redColor];
            funView.useRandomColor = NO;
            break;
        case kBlueColorTab:
            funView.currentColor = [UIColor blueColor];
            funView.useRandomColor = NO;
            break;
        case kYellowColorTab:
            funView.currentColor = [UIColor yellowColor];
            funView.useRandomColor = NO;
            break;
        case kGreenColorTab:
            funView.currentColor = [UIColor greenColor];
            funView.useRandomColor = NO;
            break;
        case kRandomColorTab:
            funView.useRandomColor = YES;
            break;
        default:
            break;
    }
}

- (IBAction)changeShape:(id)sender {
    
    UISegmentedControl *control = sender;
    [(BIDQuartzFunView *)self.subviews setShapeType:[control
                                                 selectedSegmentIndex]];
    if ([control selectedSegmentIndex] == kImageShape) {
        self.colorControl.enabled = NO;
    } else {
        self.colorControl.enabled = YES;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithCoder:(NSCoder*)coder {
    if (self = [super initWithCoder:coder]) {
        _currentColor = [UIColor redColor];
        _useRandomColor = NO;
        _drawImage = [UIImage imageNamed:@"iphone.png"] ;
    }
    return self;
}


#pragma mark - Touch Handling
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (self.useRandomColor) {
        self.currentColor = [UIColor randomColor];
    }
    UITouch *touch = [touches anyObject];
    self.firstTouchLocation = [touch locationInView:self];
    self.lastTouchLocation = [touch locationInView:self];
    [self setNeedsDisplay];
}
//- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    self.lastTouchLocation = [touch locationInView:self];
//    [self setNeedsDisplay];
//}









- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    if (self.shapeType == kImageShape) {
        CGFloat horizontalOffset = self.drawImage.size.width / 2;
        CGFloat verticalOffset = self.drawImage.size.height / 2;
        self.redrawRect = CGRectUnion(self.redrawRect,
                                      CGRectMake(self.lastTouchLocation.x -
                                                 horizontalOffset,
                                                 self.lastTouchLocation.y -
                                                 verticalOffset,
                                                 self.drawImage.size.width,
                                                 self.drawImage.size.height));




    } else {
        self.redrawRect = CGRectUnion(self.redrawRect, self.currentRect);
    }
    self.redrawRect = CGRectInset(self.redrawRect, -2.0, -2.0);
    [self setNeedsDisplayInRect:self.redrawRect];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.lastTouchLocation = [touch locationInView:self];
    if (self.shapeType == kImageShape) {
        CGFloat horizontalOffset = self.drawImage.size.width / 2;
        CGFloat verticalOffset = self.drawImage.size.height / 2;
        self.redrawRect = CGRectUnion(self.redrawRect,
                                      CGRectMake(self.lastTouchLocation.x -
                                                 horizontalOffset,
                                                 self.lastTouchLocation.y -
                                                 verticalOffset,
                                                 self.drawImage.size.width,
                                                 self.drawImage.size.height));
    }
    self.redrawRect = CGRectUnion(_redrawRect, self.currentRect);
    [self setNeedsDisplayInRect:self.redrawRect];
}





//- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
//    self.lastTouchLocation = [touch locationInView:self];
//    [self setNeedsDisplay];
//}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, self.currentColor.CGColor);
    CGContextSetFillColorWithColor(context, self.currentColor.CGColor);
    
    
//    CGRect currentRect = CGRectMake(self.firstTouchLocation.x, self.firstTouchLocation.y, self.lastTouchLocation.x - self.firstTouchLocation.x, self.lastTouchLocation.y - self.firstTouchLocation.y);
//    
    
    
    
    
    switch (self.shapeType) {
        case kLineShape:
            CGContextMoveToPoint(context,
                                 self.firstTouchLocation.x,
                                 self.firstTouchLocation.y);
            CGContextAddLineToPoint(context,
                                    self.lastTouchLocation.x,
                                    self.lastTouchLocation.y);
            CGContextStrokePath(context);
            break;
        case kRectShape:
            CGContextAddRect(context, self.currentRect); CGContextDrawPath(context, kCGPathFillStroke);
            break;
        case kEllipseShape:
            CGContextAddEllipseInRect(context, self.currentRect); CGContextDrawPath(context, kCGPathFillStroke);
            break;
            
        case kImageShape:{
            CGFloat horizontalOffset = self.drawImage.size.width / 2; CGFloat verticalOffset = self.drawImage.size.height / 2; CGPoint drawPoint = CGPointMake(self.lastTouchLocation.x -
                                                                                                                                                               horizontalOffset,
                                                                                                                                                               self.lastTouchLocation.y -
                                                                                                                                                               verticalOffset);
            [self.drawImage drawAtPoint:drawPoint];
            break; }
            
            break;
        default:
            break;
            
            
    }
    
    
    

}

- (CGRect)currentRect {
    return CGRectMake (self.firstTouchLocation.x,
                       self.firstTouchLocation.y,
                       self.lastTouchLocation.x - self.firstTouchLocation.x,
                       self.lastTouchLocation.y - self.firstTouchLocation.y);
}
@end
