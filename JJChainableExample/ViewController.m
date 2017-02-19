//
//  ViewController.m
//  JJChainableExample
//
//  Created by JJ on 2017/2/18.
//  Copyright © 2017年 JJ. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Chainable.h"
#import "JJChainableKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.make.backgroundColor([UIColor purpleColor]);
    
    UIView.make.origin(100, 100).size(50, 50).backgroundColor([UIColor greenColor]).addToSuperview(self.view);
    
    UILabel.make.origin(200,200).size(50,30).backgroundColor([UIColor greenColor]).textAlignment(NSTextAlignmentCenter).lineBreakMode(NSLineBreakByClipping).textColor([UIColor redColor]).numberOfLines(0).text(@"Hello ChainableKit").addToSuperview(self.view);
    UITextField.make.origin(300,300).size(50,30).text(@"test").textAlignment(NSTextAlignmentLeft).placeholder(@"placeholder").textColor([UIColor blueColor]).addToSuperview(self.view);
}

@end
