//
//  CrazyBackgroundView.m
//  Drawing
//
//  Created by Richie Davis on 2/18/16.
//  Copyright © 2016 Claire. All rights reserved.
//

#import "CrazyBackgroundView.h"

@implementation CrazyBackgroundView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)drawRect:(CGRect)rect
{
  CGContextRef context = UIGraphicsGetCurrentContext();
  UIColor *flatBlueColor = [UIColor colorWithRed:0.18 green:0.525 blue:0.671 alpha:1];
  UIColor *paleYellowColor = [UIColor colorWithRed:0.965 green:0.961 blue:0.682 alpha:1];
  UIColor *brightYellowColor = [UIColor colorWithRed:0.961 green:0.969 blue:0.286 alpha:1];
  UIColor *flatRedColor = [UIColor colorWithRed:0.949 green:0.259 blue:0.212 alpha:1];
  UIColor *flatGrayColor = [UIColor colorWithRed:0.337 green:0.333 blue:0.329 alpha:1];
  
  
  CGContextSetFillColorWithColor(context, flatBlueColor.CGColor);
  CGContextFillRect(context, self.bounds);
  
  
  
  CGFloat viewWidth = self.bounds.size.width;
  CGFloat viewHeight = self.bounds.size.height;
  
  CGFloat wideSquareWidth = viewWidth / 4;
  CGFloat tallSquareHeight = viewHeight / 2;
  
  CGFloat thinSquareWidth = viewWidth / 8;
  CGFloat shortSquareHeight = viewHeight / 4;
  
  //wide & tall row

  [self squareWithWidth:wideSquareWidth andHeight:tallSquareHeight andX:0 andY:0 andColor:flatBlueColor andContext:context];
  [self squareWithWidth:wideSquareWidth andHeight:tallSquareHeight andX:wideSquareWidth andY:0 andColor:paleYellowColor andContext:context];
  [self squareWithWidth:wideSquareWidth andHeight:tallSquareHeight andX:wideSquareWidth * 2 andY:0 andColor:flatRedColor andContext:context];
  [self squareWithWidth:wideSquareWidth andHeight:tallSquareHeight andX:wideSquareWidth * 3 andY:0 andColor:flatGrayColor andContext:context];
  
  //thin and short rows
  
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:0 andY:tallSquareHeight andColor:paleYellowColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth andY:tallSquareHeight andColor:flatRedColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 2 andY:tallSquareHeight andColor:flatGrayColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 3 andY:tallSquareHeight andColor:flatBlueColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 4 andY:tallSquareHeight andColor:brightYellowColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 5 andY:tallSquareHeight andColor:flatGrayColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 6 andY:tallSquareHeight andColor:flatBlueColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 7 andY:tallSquareHeight andColor:flatRedColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:0 andY:tallSquareHeight + shortSquareHeight andColor:brightYellowColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth andY:tallSquareHeight + shortSquareHeight andColor:flatGrayColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 2 andY:tallSquareHeight + shortSquareHeight andColor:flatBlueColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 3 andY:tallSquareHeight + shortSquareHeight andColor:flatRedColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 4 andY:tallSquareHeight + shortSquareHeight andColor:flatBlueColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 5 andY:tallSquareHeight + shortSquareHeight andColor:paleYellowColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 6 andY:tallSquareHeight + shortSquareHeight andColor:brightYellowColor andContext:context];
  [self squareWithWidth:thinSquareWidth andHeight:shortSquareHeight andX:thinSquareWidth * 7 andY:tallSquareHeight + shortSquareHeight andColor:flatBlueColor andContext:context];
}

-(CGRect)squareWithWidth: (CGFloat)width andHeight: (CGFloat)height andX: (CGFloat)x andY: (CGFloat)Y andColor:(UIColor*)color andContext:(CGContextRef)context
{
  CGRect returnRect = CGRectMake(x, Y, width, height);
  CGContextSetFillColorWithColor(context, color.CGColor);
  CGContextFillRect(context, returnRect);
  return returnRect;
}

@end
