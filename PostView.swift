//
//  PostView.swift
//  Social Media App
//
//  Created by StudentPM on 5/3/25.
//

import SwiftUI

struct PostView: View {
    var post: Post
    @State private var isLiked = false
  //  @State private var newComment = ""
    @State private var showComments = false
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Image(post.user.profilePicture)
                    .resizable()
                    .frame(width:30, height:30)
                    .clipShape(Circle())
                Text(post.user.username).fontWeight(.bold)
                Spacer()
                Text(post.timePosted).font(.caption).foregroundColor(.gray)
            }
            .padding([.horizontal, .top])
            
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 250)
                //.clipped()
            
            HStack(spacing: 20){
                Button(action:{isLiked.toggle() }){
                    Image(systemName:isLiked ? "heart.fill" : "heart")
                }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
            }
            
            .padding(.horizontal)
            
            Text("\(isLiked ? post.likes + 1: post.likes) likes")
                .font(.subheadline)
                .padding(.horizontal)
            
            Text("\(post.user.username): \(post.caption)")
                .font(.subheadline)
                .padding(.horizontal)
            
            if !post.comments.isEmpty {
               // Text("View all \(post.comments.count) comments")
                Button(action:{
                    withAnimation {
                        showComments.toggle()
                    }
                }) {
                    Text(showComments ? "Hide comments" : "View all \(post.comments.count) comments")
                    
                    
                }
                    .foregroundColor(.blue)
                    .font(.caption)
                    .padding(.horizontal)
            }
        }
        
        if showComments {
            ForEach(post.comments, id: \.text) { comment in
                HStack{
                    Text(comment.username)
                        .fontWeight(.bold)
                    Text(comment.text)
                }
                .font(.caption)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    PostView(post: testPost[0])
}
