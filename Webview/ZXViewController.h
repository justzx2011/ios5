//
//  ZXViewController.h
//  Webview
//
//  Created by xin zhang on 12-7-11.
//  Copyright (c) 2012年 xidian university. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
    
@interface ZXViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *button1;
- (IBAction)func:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapview;
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end
