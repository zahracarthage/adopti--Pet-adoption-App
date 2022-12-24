//
//  onBoardingScreen.swift
//  adopti
//
//  Created by Zahra chouchane on 13/7/2022.
//

import SwiftUI

struct onBoardingScreen: View {
    @State var selectedPage = 0
  @State var movetoNextScreen: Bool = false
    var body: some View {
        VStack(alignment: .center){
           
            
            TabView(selection: $selectedPage ) {
                ForEach(0..<onBoardingData.count){
                    item in
                    VStack{
                        onBoardingCard(item: onBoardingData[item])
                        Spacer()
                    }.tag(item)
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            VStack(spacing: 20){
                HStack(spacing: 8){
                    ForEach(0..<3) {
                        i in
                        if i == selectedPage {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 20, height: 4)   .foregroundColor(Color(PrimaryColor))
                            
                            
                        }
                        else{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 4)   .foregroundColor(Color(SecondaryColor).opacity(0.25))
                        }
                    }
                    
                }
                
                
                NavigationLink(destination: loginScreen(), isActive: $movetoNextScreen) {
                    
                }
                
                Button(action: {
                    if (selectedPage < onBoardingData.count - 1) {
                        selectedPage += 1
                    }
                    else {
                        movetoNextScreen.toggle()
                        
                    }
                   // moveToHomeScreen.toggle()
                    
                }) {
                    Text("Next                    ")
                        .font(.custom(poppinsSemiBold, size: 18))
                        .foregroundColor(.white)
                        .padding(5)
                    
                }.tint(Color(selectedPage == 0 || selectedPage == 2  ? primaryPink : primaryBlue))
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 13))
                   // .frame(width: 246, height: 50)
                    .controlSize(.regular)
                    .shadow(color: Color(selectedPage == 0 || selectedPage == 2  ? primaryPink : primaryBlue).opacity(0.5), radius: 30)
                
            }
            
            Spacer()
            
            
       
            

        }
    }
}

struct onBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingScreen()
    }
}

struct onBoardingCard: View {
    var item: onBoarding
    var body: some View{
        VStack(spacing: 30){
            Image(item.image)
            Text(item.title)
                .font(.custom(poppinsSemiBold, size: 32))
                .foregroundColor(Color(PrimaryColor))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.horizontal)
            
            Text(item.subtitle)
                .font(.custom(poppinsRegular, size: 16))
                .foregroundColor(Color(PrimaryColor).opacity(0.72))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.horizontal,20)
        }
            .fixedSize(horizontal: false, vertical: true)

      
    }
}
