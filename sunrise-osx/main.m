//
//  main.m
//  sunrise-osx
//
//  Created by Neel Mouleeswaran on 7/2/14.
//  Copyright (c) 2014 bitpass. All rights reserved.
//

#import <Cocoa/Cocoa.h>

    int main(int argc, char *argv[])
    {
        [[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"WebKitDeveloperExtras"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        return NSApplicationMain(argc, (const char **)argv);
    }
