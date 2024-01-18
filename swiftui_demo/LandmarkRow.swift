//
//  LandmarkRow.swift
//  swiftui_demo
//
//  Created by Viral K on 14/12/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        let imageLength: Double = 50
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: imageLength, height: imageLength)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmark: [Landmark] = ResourceLoader().loadLandmarks()
        Group {
            LandmarkRow(landmark: landmark[0]).previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmark[0]).previewLayout(.fixed(width: 300, height: 70))
        }
        
    }
}
