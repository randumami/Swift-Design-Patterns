//
//  ContentView.swift
//  Singleton
//
//  Created by Soren Randum on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
          Text("Hello, Singleton")
            Text(Singleton.shared.printSomeLine())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
