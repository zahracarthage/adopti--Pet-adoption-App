//
//  onBoardingScreen.swift
//  adopti
//
//  Created by Zahra chouchane on 13/7/2022.
//

import SwiftUI

struct onBoardingScreen: View {
    var body: some View {
        VStack(alignment: .center){
            Image("onboarding1")
                .resizable()
                .frame(width: 427.63, height: 428.59)
            
            Spacer()
                .frame(height: 50)
            
            Text("Find your next")
                .foregroundColor(Color("onBoardinghcolor"))
                .font(.custom("Poppins-SemiBold", size: 32
                             ))
                .multilineTextAlignment(.center)
            Text("best friend")
                .foregroundColor(Color("onBoardinghcolor"))
                .font(.custom("Poppins-SemiBold", size: 32
                             ))
            
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 30)
            


            Text("We will help you to find your")
                .foregroundColor(Color("onBoardingtcolor"))
                .multilineTextAlignment(.center)
                .opacity(0.72)
                .font(.custom("Poppins-Regular", size: 16))
            
           

            Text("next best friend")
                .foregroundColor(Color("onBoardingtcolor"))
                .multilineTextAlignment(.center)
                .opacity(0.72)
                .font(.custom("Poppins-Regular", size: 16))

            
           Spacer()

            

        }
    }
}

struct onBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingScreen()
    }
}
