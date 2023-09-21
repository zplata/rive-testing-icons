//
//  DockVM.swift
//  testingmacriv
//
//  Created by Zach Plata on 9/21/23.
//

import Foundation
import RiveRuntime

class EyeViewModel: RiveViewModel {
    var eyeLocation = CGPoint.zero
    
    func pointerMoved() {
        var width: CGFloat = 0
        
        for screen in NSScreen.screens {
            width += screen.frame.width
        }
        
        let mouseLocation = NSEvent.mouseLocation
        let height = NSScreen.main!.frame.height
        
        // Makes a 0 - 1 scale for each axis
        let scaleHorizontal = mouseLocation.x / width
        let scaleVertical = (height / 2 - mouseLocation.y) / height
        
        setInput("Position X", value: scaleHorizontal * 100)
        setInput("Position Y", value: scaleVertical * 100)
    }
}

class EyeView: RiveView {
    convenience init(_ vm: EyeViewModel, eyeLocation: CGPoint) {
        self.init()
        
        vm.eyeLocation = eyeLocation
        
        NSEvent.addLocalMonitorForEvents(matching: .mouseMoved) { event in
            vm.pointerMoved()
            return event
        }
    }
}

class EyeDockViewModel: EyeViewModel {
    init() {
        super.init(fileName: "dockicon")
        setView(DockIconView(self))
    }
}

class DockIconView: EyeView {
    var timeSinceTileDraw: Double = 0
    var backgroundColor: CGColor = .black
    
    override init() {
        backgroundColor = .white
        super.init()
        sharedInit()
    }
    
    convenience init(_ vm: EyeViewModel) {
        self.init(vm, eyeLocation: CGPoint(x: 0, y: 0))
        sharedInit()
    }
    
    func sharedInit() {
        wantsLayer = true
        layer?.backgroundColor = backgroundColor
        layer?.masksToBounds = true
        layer?.cornerRadius = 50
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func advance(delta: Double) {
        super.advance(delta: delta)
        
        timeSinceTileDraw += delta
        if timeSinceTileDraw >= 0.0167 {
            timeSinceTileDraw = 0

            let tile = NSApplication.shared.dockTile
            tile.contentView = self
            tile.display()
        }
    }
}
