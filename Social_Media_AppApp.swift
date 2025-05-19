//
//  Social_Media_AppApp.swift
//  Social Media App
//
//  Created by StudentPM on 5/3/25.
//

import SwiftUI

@main
struct Social_Media_AppApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                HomePage()
                    .tabItem{
                        Label("Home", systemImage: "house")
                    }
                Text("Search")
                    .tabItem {
                        Label("Search", systemImage: "magifyngglass")
                    }
                Text("Add Post")
                    .tabItem{
                        Label("Post", systemImage: "plus.square")
                    }
                
                Text("Reels")
                    .tabItem{
                        Label("Reels", systemImage: "play.rectangle")
                    }
                Text("Account")
                    .tabItem{
                        Label("Account", systemImage: "person.circle")
                    }
                
            }
            MainTabView()
        }
    }
}
