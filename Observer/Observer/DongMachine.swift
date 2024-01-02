//
//  DongMachine.swift
//  Observer
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation

class DongMachine {
  
  
  private var observers = [DongObserver]()
  private var dong = ""
  var dongCount = 0
  var dongMessage = ""

  func addObserver(_ observer: DongObserver) {
    observers.append(observer)
    }

  func removeObserver(_ observer: DongObserver) {
        observers = observers.filter { $0 !== observer }
  }

  func getDong() {
   
    // here we get som information about a new bell that can go Dong...
    // really just faking som input coming from somewhere else
    dongCount = dongCount + 1
    
    dongMessage = "The bell is going Ding-Dong, currently :  \(dongCount)"
    notifyObservers()
  }

    private func notifyObservers() {
        observers.forEach { observer in
            observer.update(dong: dongMessage)
        }
    }
}
