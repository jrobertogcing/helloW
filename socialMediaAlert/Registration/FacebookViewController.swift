//
//  FacebookViewController.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Combine
import SwiftUI

class FacebookViewController: UIViewController, LoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let loginButton = FBLoginButton(permissions: [ .publicProfile ])
        //        loginButton.delegate = self
        //
        //        loginButton.center = view.center
        //
        //        view.addSubview(loginButton)
        self.view.backgroundColor = UIColor.blue
        
        let fbLoginManager : LoginManager = LoginManager()
        fbLoginManager.logIn(permissions: ["email"], from: self) { (result, error) -> Void in
            if (error == nil){
                let fbloginresult : LoginManagerLoginResult = result!
                // if user cancel the login
                if (result?.isCancelled)!{
                    
                    let swiftUIView = UniNavigation()
                    //Set evirament variables for SwiftUI
                    let vc = UIHostingController(rootView: swiftUIView
                        .environmentObject(StatusNavigation())
                    )
                    
                    //THIS IS FOR THE VIEW
                   self.addChild(vc)
                   //vc.view.translatesAutoresizingMaskIntoConstraints = false
                   //vc.view.frame = self.view.bounds
                   //vc.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                   self.view.addSubview(vc.view)
                   // Configure Child View
                   vc.view.frame = self.view.bounds
                   vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                   vc.didMove(toParent: self)
                    
                    
                    return
                }
                if(fbloginresult.grantedPermissions.contains("email"))
                {
                    self.getFBUserData()
                }
            }
        }
        
        
    }
    
    func getFBUserData(){
        if((AccessToken.current) != nil){
            GraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    //everything works print the user data
                    print(result!)
                    let swiftUIView = UniNavigation()
                    //Set evirament variables for SwiftUI
                    let vc = UIHostingController(rootView: swiftUIView
                        .environmentObject(StatusNavigation())
                        //            .environmentObject(approvalRows)
                    )
                    
                    //THIS IS FOR THE VIEW
                    self.addChild(vc)
                    //vc.view.translatesAutoresizingMaskIntoConstraints = false
                    //vc.view.frame = self.view.bounds
                    //vc.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                    self.view.addSubview(vc.view)
                    // Configure Child View
                    vc.view.frame = self.view.bounds
                    vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                    vc.didMove(toParent: self)
                    
                    
                }
            })
        }
    }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
    
    
    
    
}
