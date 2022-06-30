//
//  LoginView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct LoginView: View {
    
    
    @ObservedObject var viewModel = LoginViewModel()
    @EnvironmentObject var auth: Authentication

    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack {
            Spacer()
            HStack {
                ZStack {
                    Text("QuicktThoughts")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.mint)
                }
            }
            Spacer()
            HStack {
                TextField("Username", text: $username)
                    .padding(4)
                    .overlay(RoundedRectangle(cornerRadius: 5.0).strokeBorder(Color.mint, style: StrokeStyle(lineWidth: 1.0)))
            }
            .padding(20)
            HStack {
                SecureField("Password", text: $password)
                    .padding(4)
                    .overlay(RoundedRectangle(cornerRadius: 5.0).strokeBorder(Color.mint, style: StrokeStyle(lineWidth: 1.0)))
            }
            .padding(20)
            Button("LOGIN") {
                Task {
                    do {
                        try await auth.user = viewModel.callAPI(user: auth.user, username: username, password: password)
                    }
                    catch {
                        print("Error LOGIN", error)
                    }
                }
            }
            .foregroundColor(Color.white)
            .padding(7)
            .frame(width: 200, height: 50)
            .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.mint)
                    )
            Spacer()
            Spacer()
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
//            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
