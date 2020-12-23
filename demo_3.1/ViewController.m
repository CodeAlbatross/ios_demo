//
//  ViewController.m
//  demo_3
//
//  Created by 刘知远 on 2020/12/18.
//

#import "ViewController.h"
#import "Calculator.h"

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

@property(strong, nonatomic) Calculator *cal;

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
    self.txtdisplay.text = str;
}

- (IBAction)clear:(UIButton *)sender {
    self.txtdisplay.text = nil;
    [self.cal cleardisp];
}

- (IBAction)delNumber:(UIButton *)sender {
    long len = self.cal.disp.length - 1;
    if (len >= 0) {
        [self.cal.disp deleteCharactersInRange:NSMakeRange(len, 1)];
        self.txtdisplay.text = self.cal.disp;
    }
    [self.cal delNumber];
}

- (IBAction)compute:(UIButton *)sender {
    self.txtdisplay.text = self.cal.computedRestult;
}

-(Calculator*)cal{
    if (!_cal) {
        _cal = [[Calculator alloc] init];
    }
    return _cal;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cal = [[Calculator alloc] init];
    // Do any additional setup after loading the view.
}


@end
