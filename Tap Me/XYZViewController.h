//
//  XYZViewController.h
//  Tap Me
//
//  Created by 城池 on 14-7-22.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController

//code
{
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    
}

-(IBAction)buttonPressed;

@end
