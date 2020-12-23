//
//  Calculator+Health.h
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/23.
//

#import "Calculator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Calculator (Health)
- (NSString *)computeHealthWithHeight:(NSString *) height andWeight :(NSString *) weight;
@end

NS_ASSUME_NONNULL_END
