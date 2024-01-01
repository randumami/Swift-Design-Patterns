//
//  ContentView.swift
//  Factory Method Pattern
//
//  Created by Soren Randum on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
  
  @State  var studyMaterial = StudyMaterialShop()
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, Factory Method Pattern!")
    }
    .padding()
    Divider()
    List {
      ForEach(typeOfMaterial.allCases, id: \.rawValue) { material in
        Button(action: {
          viewMaterial(material: material)
        }) {
          Label(material.rawValue, systemImage: "link")
        }
      }
    }
  }
  
  func viewMaterial(material : typeOfMaterial) {
    
    let mat = studyMaterial.createStudyMaterial(typeOfMaterial: material )
  
    mat.showMaterial()
  }
  
  
}

#Preview {
    ContentView(studyMaterial: StudyMaterialShop())
}
