//
//  AppDelegate.h
//  sunrise-osx
//
//  Created by Neel Mouleeswaran on 7/2/14.
//  Copyright (c) 2014 bitpass. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WebView;


@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet WebView *webView;
@property (assign) IBOutlet NSWindow *window;

@end
