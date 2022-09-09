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
    @State var isLinkActive = false

    
    var body: some View {
      //  NavigationView{
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
                        
                        
                }.padding()
               
                
                HStack(alignment: .center){
                    Text("Already have an account?")
                        .lineLimit(1)
                        .font(Font.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("DarkBlue"))

                   
                    NavigationLink(destination: loginScreen(), isActive: $isLinkActive) {
                        Button(action: {
                            self.isLinkActive = true
                        }) {
                            Text("Login")
                                .font(Font.custom("Poppins-SemiBold", size: 15))
                                .foregroundColor(Color("PrimaryBlue"))
                        }
                    }
                    
                  

                }
                
                
                
             
                
                BottomPicture(ImgName: "Bird", ShadowColor: "PrimaryBlue" )
                    .edgesIgnoringSafeArea(.bottom)
                
   
            
            }
            .navigationTitle("Sign Up")
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        

    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
