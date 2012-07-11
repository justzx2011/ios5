//
//  ZXViewController.m
//  Webview
//
//  Created by xin zhang on 12-7-11.
//  Copyright (c) 2012年 xidian university. All rights reserved.
//

#import "ZXViewController.h"

@interface ZXViewController ()

@end

@implementation ZXViewController
@synthesize mapview;
@synthesize webview;
@synthesize button1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButton1:nil];
    [self setMapview:nil];
    [self setWebview:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)func:(id)sender {
    [mapview setMapType:MKMapTypeStandard];
    [mapview setZoomEnabled:YES];
    [mapview setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = 37.78724 ; // lat of geary st
    region.center.longitude = -122.415;
    region.span.longitudeDelta = 0.007f;
    region.span.latitudeDelta = 0.007f;
    [mapview setRegion:region animated:YES]; 
    [mapview setDelegate:sender];
    
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]]; 
}
@end
