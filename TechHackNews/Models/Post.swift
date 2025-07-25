//
//  Post.swift
//  TechHackNews
//
//  Created by Juan Camilo Victoria Pacheco on 11/07/25.
//

import SwiftUI

struct Post: Decodable, Identifiable {
  var id: String { objectID }
  let objectID: String
  let points: Int
  let title: String
  let url: String?
}
