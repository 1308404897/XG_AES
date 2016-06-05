//
//  ViewController.m
//  AESTest
//
//  Created by 贾晓刚 on 16-6-5.
//  Copyright (c) 2014年 贾晓刚. All rights reserved.
//  https://www.github.com/jiaxiaogang
//

#import "ViewController.h"
#include "NSData+AES256.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* message = @"jiaxiaogang的AES";
    
    NSString* str = [NSData AES256EncryptWithPlainText:message];
    NSString* res = [NSData AES256DecryptWithCiphertext:str];
    NSLog(@"%@",str);
    NSLog(@"%@",res);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
