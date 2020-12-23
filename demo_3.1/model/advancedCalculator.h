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
@end

NS_ASSUME_NONNULL_END
