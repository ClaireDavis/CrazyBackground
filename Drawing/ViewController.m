//
//  ViewController.m
//  Drawing
//
//  Created by Richie Davis on 2/18/16.
//  Copyright © 2016 Claire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat tallRowHeight;
@property (nonatomic) CGFloat wideRowWidth;
@property (nonatomic) CGFloat shortRowHeight;
@property (nonatomic) CGFloat thinRowWidth;
@property (weak, nonatomic) IBOutlet UIView *miniViewTwo;
@property (weak, nonatomic) IBOutlet UIView *miniView;
@property (weak, nonatomic) IBOutlet UIView *miniViewThree;
@property (weak, nonatomic) IBOutlet UIView *miniViewFour;
@property (weak, nonatomic) IBOutlet UIView *miniViewFive;
@property (weak, nonatomic) IBOutlet UIView *miniViewSix;
@property (weak, nonatomic) IBOutlet UIView *miniViewSeven;
@property (weak, nonatomic) IBOutlet UIView *miniViewEight;



@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIColor *paleYellowColor = [UIColor colorWithRed:0.965 green:0.961 blue:0.682 alpha:1];
  UIColor *brightYellowColor = [UIColor colorWithRed:0.961 green:0.969 blue:0.286 alpha:1];
  UIColor *flatGrayColor = [UIColor colorWithRed:0.337 green:0.333 blue:0.329 alpha:1];
  
  self.width = self.view.bounds.size.width;
  self.height = self.view.bounds.size.height;
  
  self.tallRowHeight = self.height / 6;
  self.wideRowWidth = self.width / 4;
  
  self.shortRowHeight = self.height / 12;
  self.thinRowWidth = self.width / 8;
  
  [self setConstraintsForView:self.miniView withWidth:self.thinRowWidth + 1 andHeight:self.shortRowHeight andTopConstant:self.tallRowHeight andLeadingConstant:0];
  self.miniView.backgroundColor = flatGrayColor;
  
  [self setConstraintsForView:self.miniViewTwo withWidth:self.wideRowWidth + 1 andHeight:self.tallRowHeight andTopConstant:0 andLeadingConstant:self.wideRowWidth * 3];
  self.miniViewTwo.backgroundColor = brightYellowColor;
  
  [self setConstraintsForView:self.miniViewThree withWidth:self.wideRowWidth + 1 andHeight:self.tallRowHeight andTopConstant:self.tallRowHeight * 2 andLeadingConstant:self.wideRowWidth];
  self.miniViewThree.backgroundColor = brightYellowColor;
  
  [self setConstraintsForView:self.miniViewFour withWidth:self.thinRowWidth + 1 andHeight:self.shortRowHeight andTopConstant:self.tallRowHeight * 3 + self.shortRowHeight andLeadingConstant:self.wideRowWidth];
  self.miniViewFour.backgroundColor = brightYellowColor;

  [self setConstraintsForView:self.miniViewFive withWidth:self.wideRowWidth + 1 andHeight:self.tallRowHeight andTopConstant:self.tallRowHeight * 4 andLeadingConstant:self.wideRowWidth * 3];
  self.miniViewFive.backgroundColor = paleYellowColor;

  [self setConstraintsForView:self.miniViewSix withWidth:self.thinRowWidth + 1 andHeight:self.shortRowHeight andTopConstant:self.tallRowHeight * 5 + self.shortRowHeight andLeadingConstant:self.wideRowWidth * 2 + self.thinRowWidth];
  self.miniViewSix.backgroundColor = paleYellowColor;

  [self setConstraintsForView:self.miniViewSeven withWidth:self.thinRowWidth + 1 andHeight:self.shortRowHeight andTopConstant:self.tallRowHeight * 5 andLeadingConstant:self.thinRowWidth];
  self.miniViewSeven.backgroundColor = brightYellowColor;

  [self setConstraintsForView:self.miniViewEight withWidth:self.thinRowWidth + 1 andHeight:self.shortRowHeight andTopConstant:self.tallRowHeight + self.shortRowHeight andLeadingConstant:self.wideRowWidth * 2 + self.thinRowWidth];
  self.miniViewEight.backgroundColor = paleYellowColor;

  
  [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(flashView) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(flashViewTwo) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(flashViewThree) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(flashViewFour) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(flashViewFive) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:3.5 target:self selector:@selector(flashViewSix) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:2.75 target:self selector:@selector(flashViewSeven) userInfo:nil repeats:YES];
  [NSTimer scheduledTimerWithTimeInterval:3.2 target:self selector:@selector(flashViewEight) userInfo:nil repeats:YES];

}

-(void)setConstraintsForView: (UIView*)view withWidth:(CGFloat)width andHeight:(CGFloat)height andTopConstant:(CGFloat)topConstant andLeadingConstant:(CGFloat)leadingConstant
{
  [view.widthAnchor constraintEqualToConstant:width].active = YES;
  [view.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:topConstant].active = YES;
  [view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:leadingConstant].active = YES;
  [view.heightAnchor constraintEqualToConstant:height].active = YES;
//  view.backgroundColor = [UIColor colorWithRed:0.886 green:0.518 blue:0.075 alpha:1];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)flashView
{
  self.miniView.hidden = !self.miniView.hidden;
}

-(void)flashViewTwo
{
  self.miniViewTwo.hidden = !self.miniViewTwo.hidden;
}

-(void)flashViewThree
{
  self.miniViewThree.hidden = !self.miniViewThree.hidden;
}

-(void)flashViewFour
{
  self.miniViewFour.hidden = !self.miniViewFour.hidden;
}

-(void)flashViewFive
{
  self.miniViewFive.hidden = !self.miniViewFive.hidden;
}

-(void)flashViewSix
{
  self.miniViewSix.hidden = !self.miniViewSix.hidden;
}

-(void)flashViewSeven
{
  self.miniViewSeven.hidden = !self.miniViewSeven.hidden;
}

-(void)flashViewEight
{
  self.miniViewEight.hidden = !self.miniViewEight.hidden;
}




@end
