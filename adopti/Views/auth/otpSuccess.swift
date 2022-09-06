//
//  otpSuccess.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct otpSuccess: View {
    var body: some View {
        VStack(){
            
            Spacer()
                .frame(height: 50)
             
                Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 116, height: 116)
                .foregroundColor(Color("PrimaryBlue"))
            
                Text("Congratulations")
                    .font(Font.custom("Poppins-SemiBold", size: 30))
                    .foregroundColor(Color("DarkBlue"))
                    .padding(.bottom,20)
                
              
                Text("Your password changed")
                    .font(Font.custom("Poppins-Medium", size: 15))
                    .foregroundColor(Color("LightBlue"))
            
                Text("successfully")
                    .font(Font.custom("Poppins-Medium", size: 15))
                    .foregroundColor(Color("LightBlue"))
                    .padding(.bottom,20)

            Spacer()
                .frame(height: 50)
                
                LargeButton(title: "Explore now", backgroundColor: Color("PrimaryBlue"), foregroundColor: .white, action: {})
            
            Spacer()
                .frame(height: 50)
                
           
    
            
            BottomPicture(ImgName: "Bird", ShadowColor: "PrimaryBlue" )
                .edgesIgnoringSafeArea(.bottom)
            
        }.padding()
    }
}

struct otpSuccess_Previews: PreviewProvider {
    static var previews: some View {
        otpSuccess()
    }
}
