//
//  advancedCalculator.h
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/20.
//

#import "Calculator.h"
#import <math.h>

NS_ASSUME_NONNULL_BEGIN

@interface advancedCalculator : Calculator
@property(strong,nonatomic)NSMutableString *screen;
-(NSString *)sqrt:(NSString *) content;
-(NSString *)abs:(NSString *)content;
-(NSString *)reciprocal:(NSString *)content;
-(NSString *)square:(NSString *)content;
-(NSString *)sin:(NSString *)content;
-(NSString *)cos:(NSString *)content;
-(NSString *)tan:(NSString *)content;
-(NSString *)cubed:(NSString *)content;
-(NSString *)asin:(NSString *)content;
-(NSString *)acos:(NSString *)content;
-(NSString *)atan:(NSString *)content;
-(NSString *)ln:(NSString *)content;
-(NSString *)sinh:(NSString *)content;
-(NSString *)cosh:(NSString *)content;
-(NSString *)tanh:(NSString *)content;
-(NSString *)log:(NSString *)content;
@end

NS_ASSUME_NONNULL_END
