//
//  AppDelegate.m
//  EncodeDecode
//
//  Created by Mehul Bhavani on 04/08/17.
//  Copyright © 2017 AppYogi. All rights reserved.
//

#import "AppDelegate.h"
#import "EDWindowController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    EDWindowController *_controller;
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [NSApp activateIgnoringOtherApps:YES];
    _controller = [[EDWindowController alloc] initWithWindowNibName:NSStringFromClass(EDWindowController.class)];
    [_controller.window makeKeyAndOrderFront:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [NSApp activateIgnoringOtherApps:YES];
    if(_controller) {
        [_controller.window makeKeyAndOrderFront:nil];
    }
    return YES;
}


#pragma mark -
- (IBAction)encodeMenuItem_Clicked:(id)sender
{
    [_controller encodeString];
}
- (IBAction)decodeMenuItem_Clicked:(id)sender
{
    [_controller decodeString];
}

@end
