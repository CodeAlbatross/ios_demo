//
//  btnView.m
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/20.
//

#import "btnView.h"

@implementation btnView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) awakeFromNib{
    [super awakeFromNib];
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:12];
    [self.layer setBorderWidth:1];
}
@end
