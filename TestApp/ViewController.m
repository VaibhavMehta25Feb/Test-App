//
//  ViewController.m
//  TestApp
//
//  Created by Vaibhav on 12/02/13.
//  Copyright (c) 2013 Vaibhav. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize m_objwebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    NSDictionary *info = [bundle infoDictionary];
    NSString *prodName = [info objectForKey:@"WebUrlName"];
    
    
    NSURL *url2=[NSURL URLWithString:prodName];
    NSURLRequest *req2=[NSURLRequest requestWithURL:url2];
    [m_objwebView loadRequest:req2];
    [m_objwebView setScalesPageToFit:YES];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
