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
            break;
        case 5:
            self.cal.disp = [NSMutableString stringWithString:[self.cal sqrt:[self.cal computedRestult]]];
            self.cal.screen = [NSMutableString stringWithString:self.cal.disp];
            self.txtdisplay.text = self.cal.screen;
            break;
        case 6:
            break;
        default:
            break;
    }
    
}

-(void)viewWillAppear:(BOOL)animated{
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
