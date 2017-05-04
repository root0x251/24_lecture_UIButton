//
//  ViewController.h
//  24_lecture_UIButton
//
//  Created by Slava on 04.05.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)actionTest2:(UIButton *)sender;

- (IBAction)actionTest2TouchDown:(UIButton *)sender;


- (IBAction)actionTestTag:(UIButton *)sender;


@end

