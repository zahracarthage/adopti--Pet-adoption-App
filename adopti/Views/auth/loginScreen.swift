//
//  loginScreen.swift
//  adopti
//
//  Created by Zahra chouchane on 16/7/2022.
//

import SwiftUI

struct loginScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState var focus1: Bool
    @FocusState var focus2: Bool
    @State var showPassword: Bool = false
    @State var isLinkActive = false


    var body: some View {
        NavigationView{
            
            
            
        VStack{
           
            
            VStack(alignment: .leading){
                
          
                VStack(alignment: .leading, spacing: 4) {
                                Text("Hey there!")
                                    .lineLimit(2)
                                    .font(Font.custom("Poppins-SemiBold", size: 22))
                                    .foregroundColor(Color("DarkBlue"))
                                Text("Welcome back")
                                    .font(Font.custom("Poppins-SemiBold", size: 22))
                                    .foregroundColor(Color("DarkBlue"))


                                
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,40)
                    
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("LightBlue"))

                TextField("Enter your Email", text: $username)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
            }.padding(.bottom,25)
           
            VStack(alignment: .leading) {
                Text("Password")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("LightBlue"))

                SecureInputView("Password", text: $password)

            }
                     
            Text("Forgot password?")
                .font(Font.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color("LightBlue"))
                .padding(.top,10)
                .frame(maxWidth: .infinity, alignment: .trailing)
                       
            LargeButton(title: "Login", backgroundColor: Color("PrimaryPink"), foregroundColor: .white, action: {})
                    
                    
            }
           
            
            HStack(alignment: .center){
                Text("Don't have an account?")
                    .lineLimit(1)
                    .font(Font.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color("DarkBlue"))

                   
           
                
                NavigationLink(destination: SignUp(), isActive: $isLinkActive) {
                    Button(action: {
                        self.isLinkActive = true
                    }) {
                        Text("Sign up")
                            .font(Font.custom("Poppins-SemiBold", size: 15))
                            .foregroundColor(Color("PrimaryPink"))
                    }
                }


            }
            
            .padding()
            
         
            
            BottomPicture(ImgName: "cat", ShadowColor: "PrimaryPink" )
                .edgesIgnoringSafeArea(.bottom)
            
                
        
           
        }.padding()
         .navigationTitle("Login")
         .navigationBarTitleDisplayMode(.inline)
               
            
        }  .padding()
            
            
        
    }
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}



