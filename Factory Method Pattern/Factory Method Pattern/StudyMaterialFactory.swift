//
//  StudyMaterialFactory.swift
//  Factory Method Pattern
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation

protocol StudyMaterialFactory {
  func createStudyMaterial(typeOfMaterial : typeOfMaterial) -> StudyMaterial
}


  
class StudyMaterialShop : StudyMaterialFactory {
  
  func createStudyMaterial(typeOfMaterial : typeOfMaterial) -> StudyMaterial {
    
    
    /// here be some thing that fetches study material from somwhere.
    /// below is hardcoded values for
    
    switch typeOfMaterial.self {
      case .ePubFile :
        return ePubMaterial(title: "Tom Swift and His Airship", url: Bundle.main.url(forResource: "TomSwiftandHisAirship", withExtension: "pdf")!)
      case .webPageArticle :
        return WebPageMaterial(title: "Some article", url: URL(string: "https://github.com/randumami/Swift-Design-Patterns.git")!)
      case .youtubeVideo :
        return YoutubeMaterial(title: "", url: URL(string: "https://www.youtube.com")!)
    }
    
  }
  
  
 
}
