//
//  ContainerView.swift
//  swiftui_demo
//
//  Created by Viral K on 05/01/24.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(content: {
                    Image("background")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .blur(radius: 3)
                }).overlay(content: {
                    VStack(spacing: 30, content: {
                        HStack(spacing: 10, content: {
                            Text("Welcome to your personal app")
                                .multilineTextAlignment(.center)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .bold()
                                .kerning(5)
                                .frame(maxWidth: UIScreen.main.bounds.width)
                        })
                        NavigationLink {
                            Login()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true)
                        } label: {
                            Text("Get Started!!")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding(15)
                                .background(Color(red: 0, green: 0.4124624133, blue: 0.4259202778))
                                .cornerRadius(12)
                        }
                        .navigationBarBackButtonHidden(true)
                    })
                })
                .background(ignoresSafeAreaEdges: .all)
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
