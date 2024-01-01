//
//  StudyMaterial.swift
//  Factory Method Pattern
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation
import AppKit

///
///

// Abstract Product
protocol StudyMaterial {
  var title : String {get}
  var type : typeOfMaterial {get}
  var url : URL {get}
  func showMaterial()
}

enum typeOfMaterial : String, CaseIterable {
  case ePubFile
  case webPageArticle
  case youtubeVideo
}

// Concrete Products
class ePubMaterial : StudyMaterial {
  var title: String
  var type: typeOfMaterial = .ePubFile
  var url: URL
   
  init(title: String, url: URL) {
    self.title = title
    self.url = url
  }

  func showMaterial() {
    // open  file
         
    NSWorkspace.shared.open(url)

  }
  
}

// Concrete Products
class WebPageMaterial : StudyMaterial {
  var title: String
  var type: typeOfMaterial = .webPageArticle
  var url: URL
  
  init(title: String, url: URL) {
    self.title = title
    self.url = url
  }
  
  
  func showMaterial() {
    // show web page
    NSWorkspace.shared.open(url)
  }
    
}

// Concrete Products
class YoutubeMaterial : StudyMaterial {
  var title: String
  var type: typeOfMaterial = .youtubeVideo
  var url: URL
  
  init(title: String, url: URL) {
    self.title = title
    self.url = url
  }
  
  
  func showMaterial() {
    // show youtube video
    NSWorkspace.shared.open(url) 
  }
  
}
