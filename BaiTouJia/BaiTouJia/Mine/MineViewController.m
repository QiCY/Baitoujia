//
//  MineViewController.m
//  BaiTouJia
//
//  Created by apple on 2017/10/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MineViewController.h"
#import "CMPickerView.h"
@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[HTTPManage shareInstance] sendDataRequest:@"http://baidu.com" parameters:nil data:^(id data) {
        NSLog(@"%@",data);
    }];
    CMPickerView *pickerView = [[CMPickerView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) withType:PICKER_DATE];
    [self.view addSubview:pickerView];
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

@end
