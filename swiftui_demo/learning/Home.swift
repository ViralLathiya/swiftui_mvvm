//
//  Home.swift
//  swiftui_demo
//
//  Created by Viral K on 07/01/24.
//

import SwiftUI

struct Home: View {
    @State private var index = 0
    @AppStorage("name") private var name: String = "Enter"
    
    @State private var emailAddress = ""
    @State private var message = "Write your message here..."
    @State private var includeLogs = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading, content:  {
                        HStack {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding([.vertical], 20)
                                .padding([.leading, .trailing], 10)
                                
                            Text("Viral")
                        }
                        
                    })
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                    .background(.mint.opacity(0.2))
                    .cornerRadius(12)
                    VStack{
                        TabView(selection: $index) {
                            ForEach((0..<3), id: \.self) { index in
                                CardView()
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    }
                    .frame(height: 200)
                    HStack(content: {
                        Text("Add Expense")
                            .font(.title2)
                            .padding([.leading], 10)
                        Image(systemName: "plus")
                    }).frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
//                    Form {
//                          Section(header: Text("How can we reach you?")) {
//                            TextField("Email Address", text: $emailAddress)
//                          }
//                          Section(header: Text("Briefly explain what's going on.")) {
//                            TextEditor(text: $message)
//                          }
//                          Section(footer: Text("This information will be sent anonymously.")) {
//                            Toggle("Include Logs", isOn: $includeLogs)
//                          }
//                          Button("Submit", action: {
//                            print("Submit button tapped")
//                          })
//                        }
                }
                .navigationTitle("Welcome Viral")
                .toolbar {
                    Image(systemName: "bell.fill")
                }
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct CardView: View{
    var body: some View{
        VStack(alignment: .leading, content: {
            HStack {
                Image(systemName: "wallet.pass")
                    .resizable()
                    .frame(width: 42, height: 45, alignment: .leading)
                    .foregroundColor(Color(red: 0, green: 0.4124624133, blue: 0.4259202778))
                Text("Spending")
                    .font(.title2)
            }.padding([.leading], 10)

            Text("Total : 3444")
                .font(.title3)
                .padding([.horizontal], 15)
            Text("Total : 3444")
                .font(.title3)
                .padding([.horizontal], 15)
            
        }).frame(width: UIScreen.main.bounds.width - 30,
                 height: 200, alignment: .leading)
        .background(.gray.opacity(0.1))
            .cornerRadius(20)
            .padding(20)
    }
}
