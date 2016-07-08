//
//  ViewController.m
//  Tip Calculator
//
//  Created by Martin Zhang on 2016-07-08.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (strong, nonatomic) IBOutlet UILabel *tipAmountDisplayLabel;
@property (strong, nonatomic) IBOutlet UITextField *tipRateInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedEndEditing:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)calculateTip:(id)sender {
    float billAmountFloatValue = [self.billAmountTextField.text floatValue];
    float hundred = 100.00;
    NSString *percentageSymbol = @"%";
    if (self.tipRateInput != nil) {
        // If the program receives a userinput for tip rate specification:
        float userInputTipRate = [self.tipRateInput.text floatValue];

        float userInputRateInPercentage = userInputTipRate / hundred;
        float properTip = billAmountFloatValue * userInputRateInPercentage;
        self.tipAmountDisplayLabel.text = [NSString stringWithFormat:@"Your total bill is $%.02f, your desired tip rate is %.0f%@ and the calculated tip is $%.02f!", billAmountFloatValue, userInputTipRate,percentageSymbol, properTip];
    } else {
        // If the user does not specify the rate of the tip:
        float tipRate = 0.15;
        float properTip = billAmountFloatValue * tipRate;
        // Converted precise tip fload into an NSString with 2 decimal precisions.
        
        self.tipAmountDisplayLabel.text = [NSString stringWithFormat:@"Your total bill is $%.02f, and the suggested tip is $%.02f!", billAmountFloatValue, properTip];
    }

}

@end









