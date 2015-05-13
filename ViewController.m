//
//  ViewController.m
//  SSKeyChainDemo
//
//  Created by shuzhenguo on 15/4/13.
//  Copyright (c) 2015年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "KeychainItemWrapper.h"
#define XcodeAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define XcodeCFBundleIdentifier [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]

@interface ViewController ()
@property (nonatomic,strong)KeychainItemWrapper *wrapper;
@property (nonatomic,strong)KeychainItemWrapper *wrapper1;
@property (nonatomic,strong)KeychainItemWrapper *wrapper2;


@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    NSLog(@"mainBundle--%@",[[NSBundle mainBundle] infoDictionary]);
//    self.wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"V3KLKNYYW6.com.qyyl.test"];
//
//    
//    self.wrapper1 = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"V3KLKNYYW6.qyyl.game.GWAPP"];
//
//    self.wrapper2 = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"V3KLKNYYW6.com.qyyl.BJlLH"];
    self.wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"Y6U9M55TUE.com.yilegame.JPMOnLine"];
    
    
    self.wrapper1 = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"V3KLKNYYW6.qyyl.game.GWAPP"];
    
    self.wrapper2 = [[KeychainItemWrapper alloc] initWithIdentifier:@"keychain demo" accessGroup:@"V3KLKNYYW6.com.qyyl.BJlLH"];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cun:(id)sender {
    
    [self.wrapper setObject:XcodeAppVersion forKey:(__bridge id)kSecAttrAccount];

    [self.wrapper setObject:XcodeCFBundleIdentifier forKey:(__bridge id)(kSecAttrService)];
    
    
    
    [self.wrapper1 setObject:@"wrapper1" forKey:(__bridge id)kSecAttrAccount];
    [self.wrapper1 setObject:@"wrapper1" forKey:(__bridge id)(kSecAttrService)];
    
    [self.wrapper2 setObject:@"wrapper2" forKey:(__bridge id)kSecAttrAccount];
    
    [self.wrapper2 setObject:@"wrapper2" forKey:(__bridge id)(kSecAttrService)];

}

- (IBAction)qu:(id)sender {
    
    NSString *account = [self.wrapper objectForKey:(__bridge id)kSecAttrAccount];
    
    NSString *account0 = [self.wrapper objectForKey:(__bridge id)(kSecAttrService)];
    
    NSString *account1 = [self.wrapper1 objectForKey:(__bridge id)kSecAttrAccount];
    NSString *account11 = [self.wrapper1 objectForKey:(__bridge id)(kSecAttrService)];
    
    
    NSString *account2 = [self.wrapper2 objectForKey:(__bridge id)kSecAttrAccount];
    NSString *account22 = [self.wrapper2 objectForKey:(__bridge id)(kSecAttrService)];


    
    self.onlable.text=[NSString stringWithFormat:@"%@%@",account,account0];
    
    self.two_lable.text=[NSString stringWithFormat:@"%@%@",account11,account1];
    
    
    self.s_lable.text=[NSString stringWithFormat:@"%@%@",account2,account22];

//    NSLog(@"account1-----%@",account1);
//    NSLog(@"account11-----%@",account11);
//
//    NSLog(@"account2-----%@",account2);
//    NSLog(@"account22-----%@",account22);

}
@end
