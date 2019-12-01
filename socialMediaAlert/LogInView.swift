//
//  LogInView.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI


struct LogInView: View {
    // MARK: - Propertiers
    @State private var email = ""
    @State private var password = ""
    
    // MARK: - View
    var body: some View {
        NavigationView{
        VStack() {
            Text("All Social Media")
                .font(.largeTitle).foregroundColor(Color.white)
                .padding([.top, .bottom], 40)
                .shadow(radius: 10.0, x: 20, y: 10)
            
            Image("logoAlert")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10.0, x: 20, y: 10)
                .padding(.bottom, 50)
            
            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email)
                    //                    .padding()
                    //                    .background(Color.themeTextField)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                SecureField("Password", text: self.$password)
                    //                    .padding()
                    //                    .background(Color.themeTextField)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            
            NavigationLink(destination: SignInView()) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding(.top, 50)
//            Button(action: {}) {
//
//            }.padding(.top, 50)
            
            Spacer()
            HStack(spacing: 0) {
                
                Button(action: {}) {
                    Text("resetcompany.net")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                    
                }
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        
        }.navigationBarTitle("")
        .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
