//
//  XYZViewController.m
//  Tap Me
//
//  Created by 城池 on 14-7-22.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

-(IBAction)buttonPressed {
    count ++;
    
    scoreLabel.text = [NSString stringWithFormat:@"得分 %i",count];
}

-(void)setupGame {
    //1
    seconds = 30;
    count = 0;
    
    //2
    timerLabel.text = [NSString stringWithFormat:@"倒计时： %i",seconds];
    scoreLabel.text = [NSString stringWithFormat:@"得分：%i",count];
    //3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f   target:self selector:@selector(subtraceTime) userInfo:nil repeats:YES];
}
-(void)subtraceTime {
    //1
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"倒计时：%i",seconds];
    //2
    if(seconds == 0){
        [timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"时间到！" message:[NSString stringWithFormat:@"你的得分%i",count] delegate:self cancelButtonTitle:@"再玩一次" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupGame];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
