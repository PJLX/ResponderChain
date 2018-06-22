//
//  View1.m
//  ResponderChain
//
//  Created by 李响 on 2018/6/21.
//  Copyright © 2018年 BoomLee. All rights reserved.
//

#import "View1.h"

@implementation View1

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    printf("%s\n",__func__);
    [super touchesBegan:touches withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *v5 = self.subviews[2];
    CGPoint p = [self convertPoint:point toView:v5];
    if (CGRectContainsPoint(v5.bounds, p)) {
        return YES;
    }
    return [super pointInside:point withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
