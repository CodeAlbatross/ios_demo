//
//  Calculator.m
//  demo_3
//
//  Created by 刘知远 on 2020/12/18.
//

#import "Calculator.h"

@implementation Calculator
-(NSString *) computedRestult;//计算返回结果
{
    @try {
        //NSExpression *exp1 = [NSExpression expressionWithFormat:self.disp];
        NSExpression *exp1 = [NSExpression expressionWithFormat:[self dispConvertToFloat]];
        id value = [exp1 expressionValueWithObject:nil context:nil];
        NSLog(@"result = %f",[value floatValue]);
        self.disp = [NSMutableString stringWithString:[value stringValue]];
        return [value stringValue];
    } @catch (NSException *exception) {
        self.disp = nil;
        return @"error";
    }
}

//将整形转换成浮点型
-(NSString *)dispConvertToFloat{
    NSMutableString *disp1 = [[NSMutableString alloc] initWithFormat:@"%@",@"1.0*"];
    [disp1 appendFormat:@"%@", self.disp];
    return disp1;
}

-(NSMutableString *)disp{
    //保证disp不为空
    if (!_disp) {
        _disp=[[NSMutableString alloc] init];
    }
    return _disp;
}
-(void) delNumber;//删除屏幕上的数字
{
    long len = self.disp.length-1;
    //删除一个字符
    if (len >=0) {
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}

-(void)cleardisp;//清除结果
{
    self.disp = nil;
}
@end
