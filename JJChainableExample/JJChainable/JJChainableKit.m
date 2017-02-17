//
//  JJJJChainableKit.m
//  JJChainableExample
//
//  Created by JJ on 2017/2/18.
//  Copyright © 2017年 JJ. All rights reserved.
//

#import "JJChainableKit.h"

@implementation JJChainableKit

- (ChainableView)addToSuperview {
    __weak JJChainableKit *weakSelf = self;
    return ChainableView(view) {
        [view addSubview:weakSelf.view];
        return weakSelf;
    };
}

#pragma mark - Color

- (ChainableColor)backgroundColor {
    __weak JJChainableKit *weakSelf = self;
    return ChainableColor(color) {
        weakSelf.view.backgroundColor = color;
        return weakSelf;
    };
}

- (ChainableColor)tintColor {
    __weak JJChainableKit *weakSelf = self;
    return ChainableColor(color) {
        weakSelf.view.tintColor = color;
        return weakSelf;
    };
}


#pragma mark - Position

- (ChainableRect)frame {
    __weak JJChainableKit *weakSelf = self;
    return ChainableRect(x, y, width, height) {
        weakSelf.view.frame = CGRectMake(x, y, width, height);
        return weakSelf;
    };
}

- (ChainableRect)bounds {
    __weak JJChainableKit *weakSelf = self;
    return ChainableRect(x, y, width, height) {
        weakSelf.view.bounds = CGRectMake(x, y, width, height);
        return weakSelf;
    };
}

- (ChainablePoint)origin {
    __weak JJChainableKit *weakSelf = self;
    return ChainablePoint(x, y) {
        weakSelf.view.frame = CGRectMake(x,
                                         y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableSize)size {
    __weak JJChainableKit *weakSelf = self;
    return ChainableSize(width, height) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         width,
                                         height);
        return weakSelf;
    };
}

- (ChainablePoint)center {
    __weak JJChainableKit *weakSelf = self;
    return ChainablePoint(x, y) {
        weakSelf.view.center = CGPointMake(x, y);
        return weakSelf;
    };
}

- (ChainableFloat)x {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(x) {
        weakSelf.view.frame = CGRectMake(x,
                                         weakSelf.view.frame.origin.y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableFloat)y {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(y) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}
- (ChainableFloat)width {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(width) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableFloat)height {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(height) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         weakSelf.view.frame.size.width,
                                         height);
        return weakSelf;
    };
}

- (ChainableFloat)centerX {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(centerX) {
        weakSelf.view.center = CGPointMake(centerX,
                                           weakSelf.view.center.y);
        return weakSelf;
    };
}

- (ChainableFloat)centerY {
    __weak JJChainableKit *weakSelf = self;
    return ChainableFloat(centerY) {
        weakSelf.view.center = CGPointMake(weakSelf.view.center.x,
                                           centerY);
        return weakSelf;
    };
}

@end
