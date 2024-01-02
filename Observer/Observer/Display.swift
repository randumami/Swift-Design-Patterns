//
//  Display.swift
//  Observer
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation


// Observer Protocol
protocol DongObserver: AnyObject {
  func update(dong : String)
}




class DisplayDong : DongObserver { 
  func update(dong: String) {
    print (dong)
  }
}
  

protocol UselessFactObserver: AnyObject {
  func update(text : String)
}


