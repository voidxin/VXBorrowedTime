//
//  ViewController.m
//  VXBorrowedTime
//
//  Created by 张新 on 16/10/10.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIButton *btn;
@property(nonatomic,strong)UIButton *continueBtn;
@property(nonatomic,copy)NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addBtn];
}

#pragma mark - addBtn 
- (void)addBtn{
    self.btn.frame = CGRectMake(0, 0, 200, 50);
    self.btn.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    self.continueBtn.frame = CGRectMake(CGRectGetMaxX(self.btn.frame)-200, CGRectGetMaxY(self.btn.frame)+44, 200, 50);
    [self.view addSubview:self.btn];
    [self.view addSubview:self.continueBtn];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - getter
- (UIButton *)btn{
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn setTitle:@"CrashClick" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _btn.layer.borderColor = [UIColor orangeColor].CGColor;
        _btn.layer.borderWidth = 1;
        _btn.layer.cornerRadius = 7;
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}
- (UIButton *)continueBtn{
    if (!_continueBtn) {
        _continueBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_continueBtn setTitle:@"ContinueClick" forState:UIControlStateNormal];
        [_continueBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _continueBtn.layer.borderColor = [UIColor orangeColor].CGColor;
        _continueBtn.layer.borderWidth = 1;
        _continueBtn.layer.cornerRadius = 7;
        [_continueBtn addTarget:self action:@selector(conBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _continueBtn;
}
- (NSArray *)array{
    if (!_array) {
        _array = @[@1,@2];
    }
    return _array;
}
#pragma mark - btn event 
- (void)btnAction{
    // crash
    NSLog(@"this is crash : %@",self.array[2]);
}
- (void)conBtnAction{
    NSLog(@"this app number run");
}

@end
