//
//  LandmarkList.swift
//  swiftui_demo
//
//  Created by Viral K on 14/12/23.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject private var datasource = LandMarkListViewModel()
    @State private var shouldShowOnlyFavorite = false
    @State private var isLoading = false
    
    var body: some View {
        List {
            Toggle(isOn: $shouldShowOnlyFavorite) {
                Text("Favorites Only")
            }
            let landmarks = calculateLandmarksToDisplay();
            ForEach(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
//        NavigationView {
//            List(calculateLandmarksToDisplay(), id: \.id) { landmark in
//                LandmarkRow(landmark: landmark)
//            }.navigationTitle("Landmarks")
//        }
        
    }
    
    private func calculateLandmarksToDisplay() -> [Landmark] {
        datasource.landmarks.filter { landmark in
            return (!shouldShowOnlyFavorite ||  landmark.isFavorite);
        }
    }
    
    private func refreshLandmarks() {
        isLoading = true;
        
    
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
