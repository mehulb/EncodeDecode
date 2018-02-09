//
//  EDWindowController.m
//  EncodeDecode
//
//  Created by Mehul Bhavani on 04/08/17.
//  Copyright © 2017 AppYogi. All rights reserved.
//

#import "EDWindowController.h"

@interface EDWindowController ()

@end

@implementation EDWindowController
{
    IBOutlet NSTextView *encTextView;
    IBOutlet NSTextView *decTextView;
}


- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

#pragma mark -
- (IBAction)encodeToolbarItem_Clicked:(id)sender
{
    [self encodeString];
}
- (IBAction)decodeToolbarItem_Clicked:(id)sender
{
    [self decodeString];
}

#pragma mark - 
- (void)encodeString
{
    decTextView.string = [[encTextView.string dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];

    [[NSPasteboard generalPasteboard] clearContents];
    [[NSPasteboard generalPasteboard] setString:decTextView.string forType:NSPasteboardTypeString];
}
- (void)decodeString
{
    encTextView.string = [[NSString alloc] initWithData:[[NSData alloc] initWithBase64EncodedString:decTextView.string options:0] encoding:NSUTF8StringEncoding];
    
    [[NSPasteboard generalPasteboard] clearContents];
    [[NSPasteboard generalPasteboard] setString:encTextView.string forType:NSPasteboardTypeString];
}


@end

