//
//  SecondViewController.h
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/23.
//

#import <UIKit/UIKit.h>
#import "advancedCalculator.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property(strong,nonatomic) advancedCalculator *cal;//访问这个子类

@end

NS_ASSUME_NONNULL_END
