//
//  testingmacrivApp.swift
//  testingmacriv
//
//  Created by Zach Plata on 9/21/23.
//

import AppKit
import SwiftUI
import RiveRuntime

@main
struct testingmacrivApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate
    static var dockIconVM = EyeDockViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationWillFinishLaunching(_ notification: Notification) {
        debugPrint("WILL REACH")
//        RenderContextManager.shared().defaultRenderer = RendererType.cgRenderer
    }
    func applicationDidFinishLaunching(_ notification: Notification) {
        RenderContextManager.shared().defaultRenderer = RendererType.cgRenderer
        debugPrint("REACHED")
        testingmacrivApp.dockIconVM.setInput(
            "Pressed",
            value: true
        )
        testingmacrivApp.dockIconVM.setInput(
            "Pressed",
            value: true
        )
    }
}
