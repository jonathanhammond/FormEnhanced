//
//  SecondViewController.m
//  TabTest
//
//  Created by Jon Hammond on 25/10/2016.
//  Copyright © 2016 Sprung Studios. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

-(BOOL)prefersStatusBarHidden{
    return NO;
}


- (void)viewDidLoad {
    
    CGRect myRect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    UIWebView *webview=[[UIWebView alloc]initWithFrame:myRect];
    NSString *url=@"http://justaddmusicmedia.com/work/form/";
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [self.view addSubview:webview];
}


// Launch a Form document from a URL









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
