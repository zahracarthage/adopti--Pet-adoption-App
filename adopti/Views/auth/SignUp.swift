//
//  SignUp.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct SignUp: View {
    
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState var focus1: Bool
    @FocusState var focus2: Bool
    @State var showPassword: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    
              
                    VStack(alignment: .leading, spacing: 4) {
                                    Text("Hey there!")
                                        .lineLimit(2)
                                        .font(Font.custom("Poppins-SemiBold", size: 22))
                                        .foregroundColor(Color("DarkBlue"))
                                    Text("Welcome to Adopti")
                                        .font(Font.custom("Poppins-SemiBold", size: 22))
                                        .foregroundColor(Color("DarkBlue"))


                                    
                            }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom,40)
                        
                
                VStack(alignment: .leading) {
                    Text("User name")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("LightBlue"))

                    TextField("Enter your Email", text: $username)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                }.padding(.bottom,20)
               
               
                    VStack(alignment: .leading) {
                        Text("Email")
                            .font(Font.custom("Poppins-Medium", size: 14))
                            .foregroundColor(Color("LightBlue"))

                        TextField("Enter your Email", text: $email)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                    }.padding(.bottom,20)
                    
                    VStack(alignment: .leading) {
                        Text("Password")
                            .font(Font.custom("Poppins-Medium", size: 14))
                            .foregroundColor(Color("LightBlue"))

                        SecureInputView("Password", text: $password)

                    }
                    .padding(.bottom,17)
                         
                
                           
                LargeButton(title: "Login", backgroundColor: Color("PrimaryBlue"), foregroundColor: .white, action: {})
                        
                        
                }
               
                
                HStack(alignment: .center){
                    Text("Already have an account?")
                        .lineLimit(1)
                        .font(Font.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("DarkBlue"))

                       
                    Text("Login")
                        .font(Font.custom("Poppins-SemiBold", size: 15))
                        .foregroundColor(Color("PrimaryBlue"))

                }
                
                .padding()
                
             
                
                BottomPicture(ImgName: "Bird", ShadowColor: "PrimaryBlue" )
                    .edgesIgnoringSafeArea(.bottom)
                
                    
            }.padding()
                .navigationTitle("Sign up")
                .navigationBarTitleDisplayMode(.inline)
            
        }

    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
