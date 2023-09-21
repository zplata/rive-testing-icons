////
////  EyeViewModel.swift
////  testingmacriv
////
////  Created by Zach Plata on 9/21/23.
////
//
//import Foundation
//import RiveRuntime
//
//class EyeViewModel: RiveViewModel {
//    func pointerMoved() {
//        var width: CGFloat = 0
//        
//        for screen in NSScreen.screens {
//            width += screen.frame.width
//        }
//        
//        let mouseLocation = NSEvent.mouseLocation
//        let height = NSScreen.main!.frame.height
//        
//        // Makes a 0 - 1 scale for each axis
//        let scaleHorizontal = mouseLocation.x / width
//        let scaleVertical = (height / 2 - mouseLocation.y) / height
//        
//        setInput("Position X", value: scaleHorizontal * 100)
//        setInput("Position Y", value: scaleVertical * 100)
//    }
//}
//
//class EyeView: RiveView {
//    convenience init(_ vm: EyeViewModel) {
//        self.init()
//        
//        NSEvent.addLocalMonitorForEvents(matching: .mouseMoved) { event in
//            vm.pointerMoved()
//            return event
//        }
//    }
//}
