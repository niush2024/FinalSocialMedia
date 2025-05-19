//
//  HomePage.swift
//  Social Media App
//
//  Created by StudentPM on 5/3/25.
//

import SwiftUI
// create an string for the user first
struct User {
    let username: String
    let profilePicture: String
}
// then create an comment section for the home page
struct Comment {
    let username: String
    let text: String
}
// blank
struct Post: Identifiable {
    let id = UUID()
    let user: User
    let imageName: String
    let caption: String
    let timePosted: String
    var likes: Int
    // need to be in int cuz likes are numbers
    var comments: [Comment]
}

let testPost: [Post] = [
    Post(
        user: User(username: "Popcorn77", profilePicture:"popcornProfile"),
        imageName: "popcorn",
        caption: "Watching an movie by myself🍿🥤",
        timePosted: "3h",
        likes: 10,
        comments: [
            Comment(username: "MovieFan", text: "Looks tasty!")
        ]
    ),
    Post(
        user: User(username: "Pookie27", profilePicture: "pookieProfile"),
        imageName: "cat",
        caption: "My Cat🐈",
        timePosted: "4h",
        likes: 26,
        comments: [
            Comment(username:"Catgirl23", text: "aww cute kitty")
        ]
        //---
        
        
        
    )
]
struct HomePage: View {
    @State private var showLikeAlet = false
    @State private var goToDM = false
    var body: some View {
        NavigationView{
            // scroll up or down
            ScrollView{
                VStack(spacing: 20){
                    ForEach(testPost) { post in
                        PostView(post:post)
                    }
                }
                
                .padding(.bottom, 69)
            }
            .navigationTitle("Instagram")
            //.navigationBarItems(trailing: HStack {
             //   Image(systemName: "heart")
             //   Image(systemName: "paperplane")
           // })
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 20) {
                        Button(action: {
                            showLikeAlet = true
                        }) {
                            Image(systemName: "heart")
                        }
                        
                        NavigationLink(destination: DMPage(), isActive: $goToDM){
                            Button(action:{
                               goToDM = true
                            }) {
                                Image(systemName: "paperplane")
                            }
                        }
    
                    }
                }
            }
            .alert("Liked!", isPresented: $showLikeAlet) {
                Button("OK", role: .cancel) {}
            } message:{
                Text("You tapped the heart icon!")
            }
            
            }
            
        }
    }



#Preview {
    HomePage()
}
