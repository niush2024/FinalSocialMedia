//
//  ContentView.swift
//  Social Media App
//
//  Created by StudentPM on 5/3/25.
//

import SwiftUI
//This is where everything works like it's the final work
//TabView: where user is able to change pages on mobile
struct MainTabView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchPage()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
            AddPostPage()
                .tabItem{
                    Label("Post", systemImage: "plus.square")
                }
            ReelsPage()
                .tabItem{
                    Label("Reels", systemImage: "play.rectangle")
                }
            AccountPage()
                .tabItem{
                    Label("Account", systemImage: "person.circle")
                    
                }
               
        }
    }
}

#Preview {
    MainTabView()
}
