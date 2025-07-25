//
//  WebView.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 25/07/25.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
  let urlString: String?
  
  func makeUIView(context: Context) -> some WKWebView {
    return WKWebView()
  }
  
  func updateUIView(_ uiView: UIViewType, context: Context) {
    if let urlString = urlString {
      if let url = URL(string: urlString) {
        let request = URLRequest(url: url)
        uiView.load(request)
      }
    }
  }
}
