//
//  DetailView.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 25/07/25.
//

import SwiftUI

struct DetailView: View {
  
  let url: String?
  
  var body: some View {
    WebView(urlString: url)
  }
}


#Preview {
  DetailView(url: "http://www.google.com")
}
