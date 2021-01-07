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

-(NSString *)abs:(NSString *)content{
    double d = [content doubleValue];
    double result = fabs(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

/**
 1/x
 */
-(NSString *)reciprocal:(NSString *)content{

    double d = [content doubleValue];
    double result = 1 / d;
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)square:(NSString *)content{
    double d = [content doubleValue];
    double result = pow(d, 2);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)sin:(NSString *)content{
    double d = [content doubleValue];
    double result = sin(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)cos:(NSString *)content{
    double d = [content doubleValue];
    double result = cos(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)tan:(NSString *)content{
    double d = [content doubleValue];
    double result = tan(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

/**
 x^3
 */
-(NSString *)cubed:(NSString *)content{
    double d = [content doubleValue];
    double result = pow(d, 3);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}


-(NSString *)asin:(NSString *)content{
    double d = [content doubleValue];
    double result = asin(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}
-(NSString *)acos:(NSString *)content{
    double d = [content doubleValue];
    double result = acos(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)atan:(NSString *)content{
    double d = [content doubleValue];
    double result = atan(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)ln:(NSString *)content{
    double d = [content doubleValue];
    double result = log(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)sinh:(NSString *)content{
    double d = [content doubleValue];
    double result = sinh(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)cosh:(NSString *)content{
    double d = [content doubleValue];
    double result = cosh(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)tanh:(NSString *)content{
    double d = [content doubleValue];
    double result = tanh(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}

-(NSString *)log:(NSString *)content{
    double d = [content doubleValue];
    double result = log2(d);
    NSNumber *n = [[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}



-(void)cleardisp;//清除结果
{
    self.disp = nil;
    self.screen = nil;
}




-(void)delNumber{
    long len = self.screen.length - 1;
    //NSLog(@"字符串长度：%ld", self.disp.length-1);
    if (len >= 0) {
        //字符串表达式
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
        //屏幕上显示的字符串
        //NSLog(@"screen长度：%ld", self.screen.length - 1);
        [self.screen deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}

@end
