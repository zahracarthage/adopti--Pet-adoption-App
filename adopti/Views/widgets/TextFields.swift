//
//  TextFields.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import Foundation
import SwiftUI

struct TextFieldRounded: View {
     var TextFieldText: String = ""
    @State  var InputText: String

    var body: some View {
        
        TextField(TextFieldText, text: $InputText)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(.red, style: StrokeStyle(lineWidth: 1.0)))
            .padding()

    }
}



struct SecureInputView: View {
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            Group {
                if isSecured {
                    SecureField(title, text: $text)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        
                } else {
                    TextField(title, text: $text)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("DarkBlue"), style: StrokeStyle(lineWidth: 0.7)))
                        
                }
            }

            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .accentColor(.gray)
            }.offset(x:-30)
        }
    }
}
