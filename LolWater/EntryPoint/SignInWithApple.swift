//
//  SignInWithApple.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/23/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AuthenticationServices

final class SignInWithApple: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        
        return ASAuthorizationAppleIDButton()
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: UIViewRepresentableContext<SignInWithApple>) {
        
    }
}
