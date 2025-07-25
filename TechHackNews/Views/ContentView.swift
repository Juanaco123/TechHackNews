//
//  ContentView.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 11/07/25.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var networkManager = NetworkManager()
  
  var body: some View {
    NavigationStack {
      List(networkManager.post) { post in
        NavigationLink {
          DetailView(url: post.url)
        } label: {
          HStack {
            Text(String(post.points))
            Text(post.title)
          }
        }
      }
      .navigationTitle("Hacker news")
      .listStyle(.plain)
    }
    .onAppear {
      self.networkManager.fetchData()
    }
  }
}

#Preview {
  ContentView()
}
