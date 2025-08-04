//
//  LoginView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 04/08/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        // parent container
        VStack {
            // header view
            VStack (alignment: .leading) {
                HStack {
                    Spacer()
                }
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundStyle(Color.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomInputField(imageName: "key", placeholderText: "Password", text: $password)
                
               
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password view..")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }

            }
            
            Button {
                print("Sign in here...")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x:0, y:0)
            
           
            Spacer()
            
            NavigationLink {
                RegisterationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account ?")
                        .font(.footnote)
                        
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                }
            }
            .padding(.bottom, 32)
            .foregroundStyle(Color(.systemBlue))
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
