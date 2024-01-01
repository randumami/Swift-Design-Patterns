//
//  myFile.swift
//  Singleton
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation

class Singleton {
  static let shared = Singleton()
  var myVariable : String?
  
   private init() {}

  func printSomeLine() -> String{
    
    print("code running in the Singleton")
    return "some line of text"
  }
  
}
