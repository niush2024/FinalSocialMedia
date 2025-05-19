//
//  DMPage.swift
//  Social Media App
//
//  Created by StudentPM on 5/16/25.
//

import SwiftUI

struct DMPage: View {
    var body: some View {
        VStack{
            Text("DMs")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            List{
                Text("Message from Popcorn77")
                Text("Message from Pookie27")
                Text("Message from DressUpForever98")
            }
        }
        //.navigationTitle("DMs")
       
    }
}

#Preview {
    DMPage()
}
