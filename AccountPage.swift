//
//  AccountPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/4/25.
//

import SwiftUI

struct AccountPage: View {
    @State private var name = "Sofia Brown"
    @State private var username = "NailsNK2025"
    @State private var email = "Nk2025@yahoo.com"
    @State private var phone = "669-207-2733"
    @State private var bio = "Been working for 5 years💅"
   // @State var newUsername: String = ""
    
    let user = User(username: "NailsNK2025", profilePicture: "NailGirl")
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 12) {
                    HStack(spacing: 23){
                        
                        Image(user.profilePicture)
                            .resizable()
                            .frame(width:85, height:85)
                            .clipShape(Circle())
                            .padding(.vertical, 26)
                            .padding(.horizontal, 4)
                            .navigationBarTitleDisplayMode(.inline)
                                    .toolbar { // <2>
                                        ToolbarItem(placement: .principal) { // <3>
                                            VStack {
                                                Text("NailsNK2025").font(.headline)
                                                
                                            }
                                        }
                                    }
                        
                        
                        
                        // Spacer()
                        
                        HStack(spacing: 21){
                            
                            
                            VStack{
                                Text("17").font(.headline)
                                Text("Posts").font(.caption)
                                
                            }
                            VStack{
                                Text("100").font(.headline)
                                Text("Followers").font(.caption)
                            }
                            VStack{
                                Text("10").font(.headline)
                                Text("Following").font(.caption)
                            }
                            
                        }
                    }
                    
                    //.frame(maxWidth: .infinity)
                    // .padding(.top)
                    
                    VStack(alignment: .leading, spacing: 5){
                        
                        Text("\(name)")
                        Text("San Jose CA📍").font(.subheadline)
                        Text("\(bio)").font(.subheadline)
                        NavigationLink(destination:
                          EditProfilePage(
                            name: $name,
                            username: $username,
                            email: $email,
                            phone: $phone,
                            bio: $bio
                        ).navigationBarBackButtonHidden(true)) {
                            Text("Edit Profile")
                                .frame(maxWidth: .infinity)
                                .padding(8)
                                .background(Color.orange.opacity(0.2))
                                .foregroundColor(.black)
                                .cornerRadius(8)
                        }
                    }
                    
                    .padding(.horizontal)
                    
                    HStack{
                        Spacer()
                        Text("Posts").bold()
                        Spacer()
                        Text("Reels")
                        Spacer()
                        Text("Saved")
                        Spacer()
                        
                    }
                    
                    .padding(.top, 8)
                    
                    let postImages = (1...17).map {"post\($0)"}
                    
                    LazyVGrid(columns:Array(repeating: GridItem(.flexible(), spacing: 2), count: 3), spacing: 2){
                        ForEach(postImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .clipped()
                            
                        }
                    }
                    
                    .padding(.horizontal, 2)
                    
                }
                
                
            }
            
            
        }
       
    }
    
    
}


#Preview {
    AccountPage()
       
}
