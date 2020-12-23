//
//  HealthViewController.m
//  demo_3.1
//
//  Created by 刘知远 on 2020/12/23.
//

#import "HealthViewController.h"
#import "Calculator+Health.h"

@interface HealthViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TxtHeight;
@property (weak, nonatomic) IBOutlet UITextField *TxtWeight;
@property (weak, nonatomic) IBOutlet UILabel *LabAdvice;
@property (weak, nonatomic) IBOutlet UILabel *LabScore;
@property (weak, nonatomic) IBOutlet UIButton *btn1;

@property(strong, nonatomic) Calculator *cal;

@end

@implementation HealthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cal = [[Calculator alloc] init];
    // Do any additional setup after loading the view.
}

-(Calculator *)cal{
    if (!_cal) {
        _cal = [[Calculator alloc] init];
    }
    return _cal;
}


- (IBAction)computeScore:(UIButton *)sender {
    NSString *score = [self.cal computeHealthWithHeight:self.TxtHeight.text andWeight:self.TxtWeight.text];
    
    if ([score floatValue] < 19) {
        self.LabAdvice.text = @"太瘦";
    }else if([score floatValue] < 25){
        self.LabAdvice.text = @"prefect!";
    }else if ([score floatValue] < 30){
        self.LabAdvice.text = @"可以开始锻炼了";
    }else if([score floatValue] <39){
        self.LabAdvice.text = @"太胖了！！";
    }else
        self.LabAdvice.text =@",,,,不能再吃了";
    self.LabScore.text = score;
    
}



- (void)viewWillAppear:(BOOL)animated{
    //改变按钮样式
    [self.btn1.layer setMasksToBounds:YES];
    [self.btn1.layer setCornerRadius:12];
    [self.btn1.layer setBorderWidth:1];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //脱离输入框
    if (textField == self.TxtHeight || textField == self.TxtWeight) {
        [textField resignFirstResponder];
    }
    return YES;
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
