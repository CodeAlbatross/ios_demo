//
//  advancedCalculator.m
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/20.
//

#import "advancedCalculator.h"

@implementation advancedCalculator

-(NSString *)sqrt:(NSString *)content{
    double d = [content doubleValue];
    double result = sqrt(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(void)delNumber{
    long len = self.disp.length - 1;
    if (len >= 0) {
        //字符串表达式
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
        //屏幕上显示的字符串
        [self.screen deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}

@end
