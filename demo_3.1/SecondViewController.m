//
//  SecondViewController.m
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/23.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtdisplay;
@property (weak, nonatomic) IBOutlet UIButton *btnleft;
@property (weak, nonatomic) IBOutlet UIButton *btnright;
@property (weak, nonatomic) IBOutlet UIButton *btne;
@property (weak, nonatomic) IBOutlet UIButton *btnpi;

@end

@implementation SecondViewController


- (IBAction)inputKey:(UIButton *)sender {

    switch (sender.tag) {
        case 0:
        case 1:
        case 2:
        case 3:{
            NSMutableString *str = [NSMutableString stringWithString:self.txtdisplay.text];
            if ([[[sender titleLabel] text] isEqualToString:@"e"]) {
                [self.cal.disp appendString:@"2.7182818"];
            }else if ([[[sender titleLabel] text] isEqualToString:@"pi"]){
                [self.cal.disp appendString:@"3.1415926"];
            }else{
                [self.cal.disp appendString:[[sender titleLabel] text]];
            }
            [str appendString:[[sender titleLabel] text]];
            self.txtdisplay.text = str;
            self.cal.screen = str;
            break;
        }
        case 4:
            self.cal.disp = [NSMutableString stringWithString:[self.cal abs:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 5:
            self.cal.disp = [NSMutableString stringWithString:[self.cal sqrt:[self.cal computedRestult]]];
            //self.cal.screen = self.cal.disp 这样写会导致删除的时候数组越界，因为此时disp和screen地址相同
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 6:
            self.cal.disp = [NSMutableString stringWithString:[self.cal reciprocal:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 7:
            self.cal.disp = [NSMutableString stringWithString:[self.cal square:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 8:
            self.cal.disp = [NSMutableString stringWithString:[self.cal sin:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 9:
            self.cal.disp = [NSMutableString stringWithString:[self.cal cos:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 10:
            self.cal.disp = [NSMutableString stringWithString:[self.cal tan:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 11:
            self.cal.disp = [NSMutableString stringWithString:[self.cal cubed:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 12:
            self.cal.disp = [NSMutableString stringWithString:[self.cal asin:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 13:
            self.cal.disp = [NSMutableString stringWithString:[self.cal acos:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 14:
            self.cal.disp = [NSMutableString stringWithString:[self.cal atan:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 15:
            self.cal.disp = [NSMutableString stringWithString:[self.cal ln:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 16:
            self.cal.disp = [NSMutableString stringWithString:[self.cal sinh:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 17:
            self.cal.disp = [NSMutableString stringWithString:[self.cal cosh:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 18:
            self.cal.disp = [NSMutableString stringWithString:[self.cal tanh:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 19:
            self.cal.disp = [NSMutableString stringWithString:[self.cal log:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        default:
            break;
    }
    
}

- (void)viewWillAppear:(BOOL)animated{
    self.txtdisplay.text = self.cal.screen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
