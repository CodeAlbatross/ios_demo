//
//  ViewController.m
//  demo_3
//
//  Created by 刘知远 on 2020/12/18.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "Calculator.h"
#import "advancedCalculator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtdisplay;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btn9;
@property (weak, nonatomic) IBOutlet UIButton *btn0;
@property (weak, nonatomic) IBOutlet UIButton *btndot;
@property (weak, nonatomic) IBOutlet UIButton *btnDiv;
@property (weak, nonatomic) IBOutlet UIButton *btnSub;
@property (weak, nonatomic) IBOutlet UIButton *btnMult;
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;

@property(strong, nonatomic) advancedCalculator *cal;

@end

@implementation ViewController

- (IBAction)inputNumber:(UIButton *)sender {
    NSMutableString *str = [NSMutableString stringWithString:self.txtdisplay.text];
    if ([[[sender titleLabel] text] isEqualToString:@"✖️"]) {
        [self.cal.disp appendString:@"*"];
    }else if ([[[sender titleLabel] text] isEqualToString:@"➗"]){
        [self.cal.disp appendString:@"/"];
    }else{
        [self.cal.disp appendString:[[sender titleLabel] text]];
    }
    
    [str appendString:[[sender titleLabel] text]];
    //NSLog(str);
    self.cal.screen = str;
    self.txtdisplay.text = str;
}

- (IBAction)clear:(UIButton *)sender {
    self.txtdisplay.text = nil;
    [self.cal cleardisp];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //把advance对象传递给第二个场景
    if ([segue.identifier isEqualToString:@"SecondScence"]) {
        if ([segue.destinationViewController isKindOfClass:[SecondViewController class]]) {
            SecondViewController *svc = (SecondViewController *)segue.destinationViewController;
            svc.cal = self.cal;
        }
    }
}

-(void) viewWillAppear:(BOOL)animated{
    self.txtdisplay.text = self.cal.screen;
    
}

- (IBAction)delNumber:(UIButton *)sender {
    [self.cal delNumber];
    self.txtdisplay.text = self.cal.screen;
}

- (IBAction)compute:(UIButton *)sender {
    self.txtdisplay.text = self.cal.computedRestult;
    self.cal.screen = [NSMutableString stringWithString:self.txtdisplay.text];
}

-(Calculator*)cal{
    if (!_cal) {
        _cal = [[advancedCalculator alloc] init];
    }
    return _cal;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cal = [[advancedCalculator alloc] init];
    // Do any additional setup after loading the view.
}


@end
