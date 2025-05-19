//
//  CreateAccountPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/8/25.
//

import SwiftUI

struct CreateAccountPage: View {
    @State private var name = ""
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var users: [User]=[]
    @AppStorage("savedUsername") var savedUsername = ""
    @AppStorage("savedPassword") var savedPassword = ""
    @State private var showAccountCreated = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("RedFruit")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 20){
                    Spacer()
                    
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Group{
                        TextField("Name", text:$name)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                        TextField("Username", text:$username)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                        TextField("Email", text:$email)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                        SecureField("Password", text:$password)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                        SecureField("Confirm Password", text:$confirmPassword)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                            
                    
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    
                    Button(action:{
                        if !name.isEmpty && !username.isEmpty && password == confirmPassword{
                            savedUsername = username
                            savedPassword = password
                            showAccountCreated = true
                        }
                        
                    }) {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.horizontal, 32)
                            .frame(height:25)
                    }
                    .padding(.top, 10)
                    
                    HStack{
                        Text("Already have an account?")
                            .foregroundColor(.black)
                            .font(.system(size:19.4))
                            .bold()
                           // .background(Color.pink.opacity(0.5))
                            .cornerRadius(10)
                        //if showAccountCreated{
                           // Text("Account for\(savedUsername) created!")
                              //  .foregroundColor(.orange)
                       // }
                        
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: AccountPage().navigationBarBackButtonHidden(true), isActive: $showAccountCreated){
                        EmptyView()
                    }
                    
                    NavigationLink(destination: LoginPage().navigationBarBackButtonHidden(true)){
                        Text("Log In")
                            .foregroundColor(.blue)
                          //.font(.footnote)
                            .bold()
                            .font(.system(size: 25))
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    CreateAccountPage()
}
