//
//  AddPostPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct AddPostPage: View {
    @State private var selectedImageName = "CoolNail"
    @State private var captain = ""
    @State private var showPostConfirmation = false
    let galleryImages = ["CoolNail", "Set1", "StarNail1", "BrownNail"]
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("Create New Post")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                Image(selectedImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                TextField("Write a captain...", text: $captain)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(galleryImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width:90, height: 99)
                                .clipped()
                                .cornerRadius(8)
                                .onTapGesture {
                                    selectedImageName = imageName
                                }
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(selectedImageName == imageName ? Color.blue : Color.clear, lineWidth: 6)
                                )
                        }
                    }
                    
                    .padding(.horizontal)
                }
                
                Spacer()
                
                HStack(spacing: 20) {
                    Button("Cancel"){
                        captain = ""
                        selectedImageName = "CoolNail"
                    }
                    .foregroundColor(.red)
                    
                    Button("Post"){
                        showPostConfirmation = true
                    }
                    .padding()
                    .foregroundColor(.blue)
                    .cornerRadius(8)
                    }
                .padding(.bottom, 11)
                
            }
            .alert(isPresented: $showPostConfirmation){
                Alert(title: Text("Posted!"), message: Text("Your post has been uploaded."), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    AddPostPage()
}
