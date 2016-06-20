//
//  aeExchangeAppreleaseSchedule.m
//  aeExchange
//
//  Created by Mahaboobsab Nadaf on 18/06/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "aeExchangeAppreleaseSchedule.h"

@interface aeExchangeAppreleaseSchedule ()

@end

@implementation aeExchangeAppreleaseSchedule

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"aeExchangeAppReleaseSchedule.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)continueButton:(id)sender {
    
    [self performSegueWithIdentifier:@"CommsLetterDetails" sender:self];
}
@end
