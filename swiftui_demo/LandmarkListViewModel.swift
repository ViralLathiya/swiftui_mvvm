//
//  LandmarkListViewModel.swift
//  swiftui_demo
//
//  Created by Viral K on 14/12/23.
//

import Foundation

class LandMarkListViewModel: ObservableObject {
   @Published var landmarks: [Landmark] = ResourceLoader().loadLandmarks()
}
