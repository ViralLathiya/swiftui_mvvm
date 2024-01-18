//
//  Landmark.swift
//  swiftui_demo
//
//  Created by Viral K on 14/12/23.
//

import Foundation

struct Landmark: Hashable, Identifiable, Codable {
    var id: Int
    var name: String
    var imageName: String
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
}
