//
//  NetworkManager.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 11/07/25.
//

import Foundation

class NetworkManager: ObservableObject {
  
  @Published var post: [Post] = []
  
  func fetchData() {
    if let url: URL = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
      let session: URLSession = URLSession(configuration: .default)
      let task = session.dataTask(with: url) { data, response, error in
        if error == nil {
          let decoder = JSONDecoder()
          if let data = data {
            do {
              let results = try decoder.decode(Results.self, from: data)
              DispatchQueue.main.async {
                self.post = results.hits
              }
            } catch {
              print(error)
            }
          }
        }
      }
      task.resume()
    }
  }
}
