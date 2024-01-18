//
//  LoginPage.swift
//  swiftui_demo
//
//  Created by Viral K on 15/12/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var username: String = ""
    @State private var lastname: String = ""
    @State private var isSecondViewActive = false
    
    var body: some View {
        NavigationView {
                    VStack(spacing: 30) {
                        Image(systemName: "aqi.medium").imageScale(.large)    .font(.system(size: 40, weight: .semibold))
                        
                        VStack(alignment: .leading, content: {
                            
                            Text("Welcome!").frame(maxWidth: .infinity).fontWeight(.bold).font(.system(size: 36))
                            
                            HStack{
                              Text("First Name:")
                              TextField(
                                "Enter First Name..",
                                text: $username,
                                onCommit: {
                                    print("commit")
                                }
                              ).padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 0)).textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                            
                            HStack{
                                Text("Last Name:")
                                TextField(
                                    "Enter Last Name..",
                                    text: $lastname,
                                    onCommit: {
                                        print("commit")
                                    }
                                ).padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 0)).textFieldStyle(RoundedBorderTextFieldStyle())
                            }
                            
                            NavigationLink(destination: HomePage(), isActive: $isSecondViewActive) { EmptyView() }
                                            Button("Login") {
                                                self.isSecondViewActive = true
                                            }.buttonStyle(.borderedProminent).frame(maxWidth: .infinity).padding(EdgeInsets.init(top: 10, leading: 0, bottom: 20, trailing: 0)).padding()
                        }).padding().overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray.opacity(0.5), lineWidth: 1)).padding().shadow(radius: 1.2)
                    }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    .navigationTitle("")
                    .navigationTitle("Hello, Hide this app bar status bar and also app bar")
                }
//        NavigationView {
//            NavigationLink(destination: Text("Second View")) {
//                Text("Hello, World!")
//            }
//            .navigationTitle("Navigation")
//        }
    }
    
//    var body: some View {
        
//        NavigationView {
//            VStack {
//                Image(systemName: "aqi.medium").imageScale(.large)    .font(.system(size: 40, weight: .semibold))
//                VStack(alignment: .leading, content: {
//                    Text("Welcome!").frame(maxWidth: .infinity).fontWeight(.bold).font(.system(size: 36))
//                    HStack{
//                      Text("First Name:")
//                      TextField(
//                        "Enter First Name..",
//                        text: $username,
//                        onCommit: {
//                            print("commit")
//                        }
//                      ).padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 0)).textFieldStyle(RoundedBorderTextFieldStyle())
//                    }
//                    HStack{
//                      Text("Last Name:")
//                      TextField(
//                        "Enter Last Name..",
//                        text: $lastname,
//                        onCommit: {
//                            print("commit")
//                        }
//                      ).padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 0)).textFieldStyle(RoundedBorderTextFieldStyle())
//                    }
//                    Button {
//                        navigateToSecondView()
//                    } label: {
//                        Text("Login").frame(maxWidth: .infinity)
//                    }.buttonStyle(.borderedProminent).frame(maxWidth: .infinity).padding(EdgeInsets.init(top: 10, leading: 0, bottom: 20, trailing: 0))
//                }).padding().overlay(
//                    RoundedRectangle(cornerRadius: 16)
//                        .stroke(.gray.opacity(0.5), lineWidth: 1)).padding().shadow(radius: 1.2)
//                } //Vstack
//        }
        
//    }
    
    func navigateToSecondView() {
            var _ = NavigationLink(destination: HomePage()) {
                EmptyView()
            }.navigationBarHidden(true)
        }
        
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
