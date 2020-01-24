//
//  EntryPoint.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/23/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import SwiftUI
import AuthenticationServices

struct EntryPoint: View {
    // @State is a property wrapper from SwiftUI. It signifies that the property decorared with @State will be mutable, and that the struct will be in charge of updating it.
    // @State properties have to have a value so it is initialized with nil to start with
    @State var appleSignInDelegates: SignInWithAppleDelegates! = nil
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "person.2.square.stack.fill")
                    .resizable()
                        .frame(width: 80, height: 100)
                
                UserAndPassword()
                .padding()
                
                SignInWithApple()
                    .frame(width: 200, height: 60)
                    .onTapGesture(perform: showAppleLogin)
            }
        }
    }
    
    private func showAppleLogin() {
        
        let request = ASAuthorizationAppleIDProvider().createRequest()
        
        request.requestedScopes = [.fullName, .email]
        
        appleSignInDelegates = SignInWithAppleDelegates() { success in
            
            if success {
                // Update the UI
            } else {
                // Show the user an error
            }
            
        }
        
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.delegate = appleSignInDelegates
        
        controller.performRequests()
    }
}

struct EntryPoint_Previews: PreviewProvider {
    static var previews: some View {
        EntryPoint()
    }
}
