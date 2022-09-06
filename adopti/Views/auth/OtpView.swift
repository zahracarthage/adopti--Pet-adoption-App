//
//  OtpView.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct OtpView: View {
    
    @State private var Otpcode: String = ""

    var body: some View {
        
        VStack(){
            Spacer()
                .frame(height: 90)
            
            VStack(alignment: .leading){
                Text("Please enter the code we just sent.")
                    .font(Font.custom("Poppins-SemiBold", size: 22))
                    .foregroundColor(Color("DarkBlue"))
                    .frame(width:200)
                    .padding(.bottom,40)
                
              
                Text("Enter code")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("LightBlue"))

                HStack(spacing: 34){
                    TextField("", text: $Otpcode)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        .frame(width: 63, height: 51)
                    
                    TextField("", text: $Otpcode)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        .frame(width: 63, height: 51)
                    
                    TextField("", text: $Otpcode)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        .frame(width: 63, height: 51)
                    
                    TextField("", text: $Otpcode)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        .frame(width: 63, height: 51)
                }
               
                
                
                Spacer()
                    .frame(height: 50)
                
                LargeButton(title: "Submit", backgroundColor: Color("PrimaryPink"), foregroundColor: .white, action: {})
                
            }.padding()
         
            Spacer()
                .frame(height: 50)
           
            
            BottomPicture(ImgName: "cat", ShadowColor: "PrimaryPink" )
                .edgesIgnoringSafeArea(.bottom)
            
        }.padding()
    }
}

struct OtpView_Previews: PreviewProvider {
    static var previews: some View {
        OtpView()
    }
}
