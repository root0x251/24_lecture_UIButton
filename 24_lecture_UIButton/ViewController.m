//
//  ViewController.m
//  24_lecture_UIButton
//
//  Created by Slava on 04.05.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];    // создаем
    button.frame = CGRectMake(200, 200, 200, 200);
    button.backgroundColor = [UIColor grayColor];
    [button setTitle:@"Кнопка" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
//                                                                              // не нажатое состояние
//    NSDictionary *attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30],
//                                 NSForegroundColorAttributeName: [UIColor orangeColor]};
//    NSAttributedString *title = [[NSAttributedString alloc] initWithString:@"Кнопка" attributes:attributes];
// 
//    [button setAttributedTitle:title forState:UIControlStateNormal];
//    
//                                                                              // при нажатии
//    NSDictionary *attributesTap = @{NSFontAttributeName: [UIFont systemFontOfSize:20],
//                                 NSForegroundColorAttributeName: [UIColor blueColor]};
//    NSAttributedString *titleTap = [[NSAttributedString alloc] initWithString:@"Кнопка нажать" attributes:attributesTap];
//    
//    [button setAttributedTitle:titleTap forState:UIControlStateHighlighted];
    
    
                                                                // внутренние отступы
    //UIEdgeInsets insets = UIEdgeInsetsMake(100, 100, 0, 0);
    //button.titleEdgeInsets = insets;
    
    [button addTarget:self action:@selector(actionTest:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(actionTestOutside:) forControlEvents:UIControlEventTouchUpOutside];

    
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action

- (void)actionTest:(UIButton *)buttonTest {
    NSLog(@"button pressed");
}

- (void)actionTestOutside:(UIButton *)buttonTest {
    NSLog(@"button pressed outside");
}

- (IBAction)actionTest2:(UIButton *)sender {
    NSLog(@"TEST2");
}

- (IBAction)actionTest2TouchDown:(UIButton *)sender {
    NSLog(@"test test2  ");
}

- (IBAction)actionTestTag:(UIButton *)sender {
    self.label.text = [NSString stringWithFormat:@"%ld", sender.tag];
}



@end
