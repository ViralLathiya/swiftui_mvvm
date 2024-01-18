//
//  SplashView.swift
//  swiftui_demo
//
//  Created by Viral K on 16/12/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isAnimationCompleted = false
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        
        if self.isAnimationCompleted {
            LoginPage()
        }else {
            VStack {
                Image(systemName: "aqi.low")
                    .foregroundColor(.blue)
                    .font(.system(size: 100))
                    .rotationEffect(.degrees(rotationAngle))
                    .onAppear {
                        withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                            rotationAngle += 360
                        }
                        
                        // Use a DispatchQueue to delay the navigation until after the animation
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation {
                                isAnimationCompleted = true
                            }
                        }
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
