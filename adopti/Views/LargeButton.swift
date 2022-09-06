//
//  LargeButton.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct LargeButton: View {
    private static let buttonHorizontalMargins: CGFloat = 20
    
    var backgroundColor: Color
    var foregroundColor: Color
    
     let title: String
     let action: () -> Void
    
    // It would be nice to make this into a binding.
     let disabled: Bool
    
   init(title: String,
         disabled: Bool = false,
        backgroundColor: Color,
        foregroundColor: Color,
        action: @escaping () -> Void) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.title = title
        self.action = action
        self.disabled = disabled
    }
    
    var body: some View {
        HStack {
           /// Spacer(minLength: LargeButton.buttonHorizontalMargins)
            // Spacer(minLength: 0)
            Button(action:self.action) {
                Text(self.title)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(LargeButtonStyle(backgroundColor: backgroundColor,
                                          foregroundColor: foregroundColor,
                                          isDisabled: disabled))
                .disabled(self.disabled)
            //Spacer(minLength: LargeButton.buttonHorizontalMargins)
        }
        //frame(maxWidth:.infinity)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
       // LargeButton(title: "aa", backgroundColor: .red, foregroundColor: .black, action: {})
        loginScreen()
    }
}


struct LargeButtonStyle: ButtonStyle {
    
    let backgroundColor: Color
    let foregroundColor: Color
    let isDisabled: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let currentForegroundColor = isDisabled || configuration.isPressed ? foregroundColor.opacity(0.3) : foregroundColor
        return configuration.label
            .padding()
            .foregroundColor(currentForegroundColor)
            .background(isDisabled || configuration.isPressed ? backgroundColor.opacity(0.3) : backgroundColor)
            // This is the key part, we are using both an overlay as well as cornerRadius
            .cornerRadius(11)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(currentForegroundColor, lineWidth: 1)
        )
            .padding([.top, .bottom], 10)
            .font(Font.custom("Poppins-SemiBold", size: 18))
            
        
        
    }
}
