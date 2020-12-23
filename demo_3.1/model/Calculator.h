//
//  Calculator.h
//  demo_3
//
//  Created by 刘知远 on 2020/12/18.
//  一个计算器

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject
@property(strong,nonatomic) NSMutableString *__nullable disp;//强引用和非多线程安全的可变字符串

-(void) delNumber;//删除屏幕上的数字
-(NSString *) computedRestult;//计算返回结果
-(void)cleardisp;//清除结果
@end

NS_ASSUME_NONNULL_END
