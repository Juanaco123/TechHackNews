//
//  ContentView.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 11/07/25.
//

import SwiftUI

struct ContentView: View {
  
  private var posts: [Post] = [
    Post(id: "1", title: "First post"),
    Post(id: "2", title: "Second post"),
    Post(id: "3", title: "Third post")
  ]
  
  var body: some View {
    NavigationStack {
      List(posts) { post in
        Text(post.title)
      }
      .navigationTitle("Hacker news")
    }
  }
}

#Preview {
  ContentView()
}
