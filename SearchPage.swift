//
//  SearchPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct SearchPage: View {
    @State private var searchText = ""
    let postImages = ["Bird", "BlackH", "Cake1","Paris 2", "Dog4", "Coffee6", "Laptop", "Woman1", "Road", "Woman2", "House9", "Snow"]
    let columns = Array(repeating: GridItem(.flexible(), spacing: 1), count: 3)
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.purple)
                
                TextField("Search", text: $searchText)
                    .foregroundColor(.primary)
                
            }
            
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(13)
            .padding()
            
            Spacer()
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 1){
                    ForEach(postImages, id: \.self){ imageName in
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                            .clipped()
                        
                        
                    }
                }
            }
            
            
        }
        
    }
}

#Preview {
    SearchPage()
}
