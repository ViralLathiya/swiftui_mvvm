//
//  Login.swift
//  swiftui_demo
//
//  Created by Viral K on 07/01/24.
//

import SwiftUI

struct Login: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            _loginContent
        }.onTapGesture {
            self.endTextEditing()
      }
    }
    
    var _loginContent: some View {
        VStack {
            Image("background")
                .blur(radius: 3)
                .overlay {
                    VStack {
                        _contentView
                            .padding([.vertical], 12)
                        HStack {
                            Text("Already have an account?")
                                .font(.title3)
                                .foregroundColor(.white)
                                .kerning(1)
                            NavigationLink {
                                Text("Registration")
                            } label: {
                                Text("Sign up")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .underline()
                            }
                        }
                        
                    }
                    
            }
        }
    }
    
    var _contentView: some View {
        VStack {
            _header
            _userNameField
            _passwordField
            NavigationLink {
                Text("Home")
            } label: {
                _loginButton
            }
        }
        .padding(20)
        .background(.white)
        .cornerRadius(12)
        .frame(maxWidth: UIScreen.main.bounds.width - 30)
        .shadow(color: .black.opacity(0.3), radius: 2)
    }
    
    var _header: some View {
        HStack {
            Text("Start Login")
                .kerning(2)
                .foregroundColor(.black)
                .font(.title)
                .padding([.horizontal], 10)
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 24, height: 22)
                .foregroundColor(Color(red: 0, green: 0.4124624133, blue: 0.4259202778))
                .shadow(color: .black.opacity(0.2), radius: 1.2)
        }
    }
    
    var _userNameField: some View {
        TextField("Enter username", text: $username)
            .frame(height: 60)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 8)
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray))
                .padding([.vertical], 8)
    }
    
    var _passwordField: some View {
        TextField("Enter password", text: $password)
            .frame(height: 60)
                .textFieldStyle(PlainTextFieldStyle())
                .padding([.horizontal], 8)
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.gray))
                .padding([.vertical], 15)
    }
    
    var _loginButton: some View {
        Text("Login")
            .font(.title2)
            .bold()
            .foregroundColor(Color.white)
            .frame(height: 23)
            .padding([.horizontal], 35)
            .padding([.vertical], 12)
            .background(Color(red: 0, green: 0.4124624133, blue: 0.4259202778))
            .cornerRadius(12)
            .shadow(color: .black, radius: 1)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

extension View {
  func endTextEditing() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                    to: nil, from: nil, for: nil)
  }
}
