//
//  ContentView.swift
//  testingmacriv
//
//  Created by Zach Plata on 9/21/23.
//

import SwiftUI
import RiveRuntime

struct ContentView: View {
  //  var rvm = EyeDockViewModel()
    var body: some View {
        VStack {
//            rvm.view()
//            Button(action: {
//                // Closure to perform some action when the button is clicked.
//                self.buttonClicked()
//            }) {
//                Text("Click Me")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            .onTapGesture {
//                // You can also use the onTapGesture modifier for the same purpose.
//                self.buttonClicked()
//            }
            Text("Hello, world!")
        }
        .padding()
    }
    
//    private func buttonClicked() {
//        // Perform your action here.
//        rvm.setInput("Pressed", value: true)
////        testingmacrivApp.dockIconVM.setInput("Pressed", value: true)
//        
//        // Update the button state if needed.
////        self.buttonState = true
//    }
}

#Preview {
    ContentView()
}
