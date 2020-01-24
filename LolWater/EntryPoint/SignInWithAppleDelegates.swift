//
//  SignInWithAppleDelegates.swift
//  LolWater
//
//  Created by Daniel Gaeta on 1/23/20.
//  Copyright © 2020 Daniel Gaeta. All rights reserved.
//

import UIKit
import AuthenticationServices


class SignInWithAppleDelegates: NSObject {
    private let signInSucceeded: (Bool) -> Void
    
    init(onSignedIn: @escaping (Bool) -> Void) {
        self.signInSucceeded = onSignedIn
    }
}

extension SignInWithAppleDelegates: ASAuthorizationControllerDelegate {
    private func registerNewAccount(credential: ASAuthorizationAppleIDCredential) {
        // This is the only time Apple will give us the credentials for the user (on the first time registering)
        // Other than this, Apple will only authenticate the user
        // So we need to make sure that we are responsible enough to save it in our remote databases
        
        // capture the user data Apple has sent us
        let userData = UserData(email: credential.email!,
                                name: credential.fullName!,
                                identifier: credential.user)

        let keychain = UserDataKeychain()
        do {
            // attempt to store the data in our remote user database - Ray
            try keychain.store(userData)
        } catch {
            self.signInSucceeded(false)
        }
        
        do {
            let success = try WebApi.Register(user: userData,
                                              identityToken: credential.identityToken,
                                              authorizationCode: credential.authorizationCode)
            self.signInSucceeded(success)
        } catch {
            self.signInSucceeded(false)
        }
    }
    
    private func signInWithExistingAccount(credential: ASAuthorizationAppleIDCredential) {
        // You should have a fully registered account here; if you get an error from your server that the account doesn't exist, you can look in the keychain for credentials and attempt to rerun setup.
        
        do {
            try WebApi.Login(userId: credential.user, identityToken: credential.identityToken, authorizationCode: credential.authorizationCode)
            print("logged in")
            self.signInSucceeded(true)
        } catch {
            self.signInSucceeded(false)
        }
        
    }
    
    private func signInWihUserAndPassword(credential: ASPasswordCredential) {
        
//        if (WebApi.login(credential.user, credential.password)) {
//            ...
//        }
        self.signInSucceeded(true)
    }
    
    
    // Success
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        switch authorization.credential {
        case let appleIdCredential as ASAuthorizationAppleIDCredential:
            
            if let _ = appleIdCredential.email, let _ = appleIdCredential.fullName {
                
                registerNewAccount(credential: appleIdCredential)
            } else {
                signInWithExistingAccount(credential: appleIdCredential)
            
             
            }
        case let passwordCredential as ASPasswordCredential:
            break
        
        default:
            break
        }
    }
    
    // Error
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        // Handle error
        print(error)
    }
}

