//
//  ReelsPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/12/25.
//

import SwiftUI

struct Reel: Identifiable {
    let id = UUID()
    let imageName: String
    let username: String
    let caption: String
    var likes: Int
}

struct ReelsPage: View {
    let reels: [Reel] = [

            Reel(imageName:"brownlight36", username:"SaraPet29", caption: "Fresh cut,fresh start💇🏼‍♀️", likes:9000),

            Reel(imageName:"Hair1", username:"HealthyHairTricks34", caption: "7 tips to get healthy hair like mine🌸", likes:40000),

            Reel(imageName:"redhair88", username:"DressUpForever98", caption: "summer is coming, buy one and get one for free🧴", likes:20000)
        ]
    
    var body: some View {
        TabView{

                   ForEach(reels) { reel in

                       ZStack{

                           Image(reel.imageName)

                               .resizable()

                               .scaledToFill()

                               //.frame(maxWidth: .infinity, maxHeight: .infinity)

                               .ignoresSafeArea()

                               //.clipped()

                           

                           VStack{

                               Spacer()

                               

                               HStack(alignment: .bottom) {

                                   VStack(alignment: .leading, spacing: 9){

                                       HStack{

                                           Image(systemName: "person.crop.circle.fill")

                                               .resizable()

                                               .frame(width:30, height: 30)

                                               .foregroundColor(.white)

                                           

                                           Text("@\(reel.username)")

                                               .bold()

                                               .foregroundColor(.white)

                                               

                                       }

                                       

                                       Text(reel.caption)

                                           .foregroundColor(.white)

                                           .lineLimit(2)

                                           .font(.subheadline)

                                   }

                                   

                                   Spacer()

                                   

                                   VStack(spacing: 25) {

                                       VStack{

                                           Image(systemName: "heart.fill")

                                               .foregroundColor(.red)

                                               .font(.title2)
                                               

                                           Text("\(reel.likes)")

                                               .foregroundColor(.white)

                                               .font(.caption)

                                       }

                                       

                                       VStack{

                                           Image(systemName: "message.fill")

                                               .foregroundColor(.blue)

                                               .font(.title2)

                                           Text("Comment")

                                               .foregroundColor(.white)

                                               .font(.caption2)

                                       }

                                       

                                       Image(systemName: "paperplane.fill")

                                           .foregroundColor(.white)

                                           .font(.title2)
                                       
                                   }

                               }

                               

                               .padding()

                           }

                       }

                   }

               }

               

               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

               .ignoresSafeArea()
    }
}

#Preview {
    ReelsPage()
}
