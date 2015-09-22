//
//  ViewController.m
//  InevitableCalculator
//
//  Created by Oscar on 9/22/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (retain) IBOutlet UITextField    *calculatorOutput;
@property (retain) NSString                *currentOperator;
@end

@implementation ViewController
float leftNumber = 0;
float rightNumber = 0;
float result = 0;

#pragma mark - Interactivity Methods

- (IBAction)buttonClearPressed:(id)sender {
    NSLog(@"Clear");
    _calculatorOutput.text = [NSString stringWithFormat:@""];
    leftNumber = 0;
    rightNumber = 0;
    result = 0;
    _currentOperator = @"";
}

- (IBAction)button1Pressed:(id)sender {
    NSLog(@"1");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@1", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button2Pressed:(id)sender {
    NSLog(@"2");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@2", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button3Pressed:(id)sender {
    NSLog(@"3");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@3", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button4Pressed:(id)sender {
    NSLog(@"4");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@4", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button5Pressed:(id)sender {
    NSLog(@"5");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@5", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button6Pressed:(id)sender {
    NSLog(@"6");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@6", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button7Pressed:(id)sender {
    NSLog(@"7");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@7", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button8Pressed:(id)sender {
    NSLog(@"8");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@8", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button9Pressed:(id)sender {
    NSLog(@"9");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@9", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)button0Pressed:(id)sender {
    NSLog(@"0");
    _calculatorOutput.text = [NSString stringWithFormat:@"%@0", _calculatorOutput.text];
    if ([_currentOperator isEqualToString:@""]) {
        leftNumber = [_calculatorOutput.text floatValue];
    }   else {
        rightNumber = [_calculatorOutput.text floatValue];
    }
}

- (IBAction)buttonPlusPressed:(id)sender {
    NSLog(@"+");
    _calculatorOutput.text = @"";
    _currentOperator = @"+";
}


- (IBAction)buttonMinusPressed:(id)sender {
    NSLog(@"-");
    _calculatorOutput.text = @"";
    _currentOperator = @"-";
}

- (IBAction)buttonMultiplyPressed:(id)sender {
    NSLog(@"*");
    _calculatorOutput.text = @"";
    _currentOperator = @"*";
}


- (IBAction)buttonDividePressed:(id)sender {
    NSLog(@"/");
    _calculatorOutput.text = @"";
    _currentOperator = @"/";
}

- (IBAction)buttonEqualsPressed:(id)sender {
    NSLog(@"=");
    if ([_currentOperator isEqualToString:@"+"]) {
        result = leftNumber + rightNumber;
        leftNumber = result;
    }
    if ([_currentOperator isEqualToString:@"-"]) {
        result = leftNumber - rightNumber;
        leftNumber = result;
    }
    if ([_currentOperator isEqualToString:@"*"]) {
        result = leftNumber * rightNumber;
        leftNumber = result;
    }
    if ([_currentOperator isEqualToString:@"/"]) {
        result = leftNumber / rightNumber;
        leftNumber = result;
    }
    _calculatorOutput.text = [NSString stringWithFormat:@"%f", result];
}







#pragma mark - Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentOperator = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
