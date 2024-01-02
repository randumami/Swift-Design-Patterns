//
//  ObserverApp.swift
//  Observer
//
//  Created by Soren Randum on 01/01/2024.
//

import SwiftUI

@main
struct ObserverApp: App {
  
  // faking tha something happens
  let dong = DongMachine()
  let display = DisplayDong()
  
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  
    var body: some Scene {
        WindowGroup {
            ContentView()
            .onAppear(){
              dong.addObserver(display)
            }
            .onReceive(timer, perform: { _ in
              print("The DonMachine in app is triggered")
              dong.getDong()
            })
        }
   
    }
  
}
