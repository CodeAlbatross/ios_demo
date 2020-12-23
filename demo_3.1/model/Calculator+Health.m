//
//  Calculator+Health.m
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/23.
//

#import "Calculator+Health.h"

@implementation Calculator (Health)
-(NSString *) computeHealthWithHeight:(NSString *)height andWeight:(NSString *)weight{
    //expression = weight / ( (heigth/100) * (height/100) )
    NSMutableString *expression;
    expression = [NSMutableString stringWithString:weight];
    [expression appendString:@"/(("];
    [expression appendString:height];
    [expression appendString:@"/100.0)"];
    [expression appendString:@"*("];
    [expression appendString:height];
    [expression appendString:@"/100.0))"];
    self.disp = expression;
    
    return [NSString stringWithFormat:@"%.2f", [[self computedRestult] floatValue]];
}

@end
