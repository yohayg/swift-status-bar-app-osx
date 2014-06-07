//
//  AppDelegate.swift
//  SwiftStatusBarApplication
//
//  Created by Tommy Leung on 6/7/14.
//  Copyright (c) 2014 Tommy Leung. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow

    func applicationDidFinishLaunching(aNotification: NSNotification?)
    {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?)
    {
        // Insert code here to tear down your application
    }

    override func awakeFromNib()
    {
        let bar = NSStatusBar.systemStatusBar();
        
        //statusItemWithLength expects CGFloat; NSVariableStatusItemLength is CInt
        let length = CDouble(NSVariableStatusItemLength);
        
        let item = bar.statusItemWithLength(length);
        
        let icon = IconView(imageName: "icon", item: item);
        item.view = icon;
    }
}

