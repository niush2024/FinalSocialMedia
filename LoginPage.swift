//
//  LoginPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/8/25.
//

import SwiftUI

struct LoginPage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var isCreatingAcc = false

    
    var body: some View {
        NavigationView{
            ZStack{
                Image("RedRed")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack(spacing: 20){
                    Spacer()
                    
                    Text("Instagram")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    TextField("Username", text:$username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        //.padding(.horizontal)
                        .padding(.horizontal, 32)
                        .frame(height:25)
                    
                    SecureField("Password", text:$password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                       // .padding(.horizontal)
                        .padding(.horizontal, 32)
                        .frame(height:25)
                    
                    Button(action: {
                        if username == "NailsNK2025" && password == "Niush2025$"{
                            // for some reason doesn't work with NiushNK2025 so i go with Nai for now
                             isLoggedIn = true
                        }
                        
                    }) {
                        Text("Log In")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        //.padding(.horizontal)
                            .padding(.horizontal, 32)
                            //.frame(height:25)
                        
                        
                    }
                    
                    NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(true), isActive: $isLoggedIn){
                        EmptyView()
                    }
                    
                    .padding(.top, 10)
                    
                    Button("Forgot Password?"){
                        
                    }
                    .foregroundColor(.black)
                    .font(.system(size:19.4))
                    .bold()
                    //.background(Color.teal.opacity(0.5))
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    HStack{
                        Text("Don't have an account?")
                            .foregroundColor(.black)
                            .font(.system(size:19.4))
                            .bold()
                        
                        Button(action: {
                            isCreatingAcc = true
                            
                        }) {
                            Text("Sign Up")
                                .foregroundColor(Color.blue.opacity(20))
                                .font(.system(size:19.3))
                                .bold()
                            
                        }
                        
                        
                        NavigationLink(destination: CreateAccountPage().navigationBarBackButtonHidden(true), isActive: $isCreatingAcc){
                            EmptyView()
                        }
                        
                        //                        NavigationLink(destination: CreateAccountPage().navigationBarBackButtonHidden(true), isActive: $isCreatingAcc){
//                            EmptyView()
//                            Text("Sign Up")
//                            .foregroundColor(Color.blue.opacity(20))
//                            .font(.system(size:19.3))
//                            .bold()
//                        }
                        
                        
                    }
                    
                    .font(.footnote)
                    .padding(.bottom, 10)
                    
                    
                }
            }
        }
    }
}

#Preview {
    LoginPage()
}
