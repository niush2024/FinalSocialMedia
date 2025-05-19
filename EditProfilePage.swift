//
//  EditProfilePage.swift
//  Social Media App
//
//  Created by StudentPM on 5/7/25.
//

import SwiftUI

struct EditProfilePage: View {
    @Binding var name: String
    @Binding var username: String
    @Binding var email: String
    @Binding var  phone: String
    @Binding var bio: String
    @State var newUsername: String = ""
    @State var newName: String = ""
    @State var newEmail: String = ""
    @State var newPhone: String = ""
    @State var newBio: String = ""
    @Environment(\.presentationMode) var presentationMode
    // This is to make the editprofilepage go back to the accountpage
    // Added to save and cancel button for it to work
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("LongNails")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                HStack{
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                
                VStack(spacing: 20) {
                    Text("Edit Profile")
                        .font(.title)
                        .bold()
                        .foregroundColor(.init(red: 15, green: 16, blue: 20))
                    
                    Image("NailGirl")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:85, height: 85)
                        .clipShape(Circle())
                    
                    //create group to put all the Textfield in
                    VStack(spacing: 20){
                        TextField("Name", text: $newName)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Username", text: $newUsername)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Email", text: $newEmail)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Phone", text: $newPhone)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                        TextField("Bio", text: $newBio)
                            .padding(.horizontal, 90)
                            .frame(height:25)
                    }
                    
                    
                    //fix the texts so they dont be in corner
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    
                    HStack(spacing: 30){
                        Button("Save Changes"){
                            // do the save
                            saveDetails()
                        }
                        
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(9)
                        
                        Button("Cancel"){
                            //do the cancel
                            dismiss()
                        }
                        
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(9)
                    }
                    //Spacer()
                    //made it goes up too much
                }
                
                .padding()
            }
        }
    }
    
    func saveDetails(){
        name = newName
        dismiss()
        
        bio = newBio
        dismiss()
    }
}

#Preview {
    EditProfilePage(
        name: .constant(""),
        username: .constant(""),
        email: .constant(""),
        phone: .constant(""),
        bio: .constant("")
    )
}
