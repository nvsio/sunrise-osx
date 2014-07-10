//
//  AppDelegate.m
//  sunrise-osx
//
//  Created by Neel Mouleeswaran on 7/2/14.
//  Copyright (c) 2014 bitpass. All rights reserved.
//

#import "AppDelegate.h"
#import <WebKit/WebKit.h>

@implementation AppDelegate

@synthesize webView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    //NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://calendar.sunrise.am"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.scheedule.com"]];
    [[webView preferences] setJavaScriptEnabled:YES];
    [[webView preferences]setJavaScriptCanOpenWindowsAutomatically:YES];
	[webView.mainFrame loadRequest:request];
}

- (void)webView:(WebView *)webView didFinishLoadForFrame:(WebFrame *)webFrame {
    NSString *currentURL = [[[[webFrame dataSource] request] URL] absoluteString];
    NSLog(@"just loaded: %@", currentURL);
    if ([currentURL hasPrefix:@"string"]) {
        // We are at the redirect URI!
    }
}

/*
- (void)webView:(WebView *)sender decidePolicyForNavigationAction:(NSDictionary *)actionInformation request:(NSURLRequest *)request frame:(WebFrame *)frame decisionListener:(id<WebPolicyDecisionListener>)listener {
    
    NSLog(@"test");
    
    if( [sender isEqual:webView] ) {
        [listener use];
    }
    else {
        [[NSWorkspace sharedWorkspace] openURL:[actionInformation objectForKey:WebActionOriginalURLKey]];
        [listener ignore];
    }
}

- (void)webView:(WebView *)sender decidePolicyForNewWindowAction:(NSDictionary *)actionInformation request:(NSURLRequest *)request newFrameName:(NSString *)frameName decisionListener:(id<WebPolicyDecisionListener>)listener {

    NSLog(@"new window");
    
    [[NSWorkspace sharedWorkspace] openURL:[actionInformation objectForKey:WebActionOriginalURLKey]];
    [listener ignore];
}
*/

@end
