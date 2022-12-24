//
//  signInWithApple.swift
//  adopti
//
//  Created by Zahra chouchane on 24/12/2022.
//

import Foundation

import SwiftUI
import AuthenticationServices


final class SignInWithApple: UIViewRepresentable {

    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        
        return ASAuthorizationAppleIDButton()
    }
    
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
    }
}

