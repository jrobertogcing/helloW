//
//  SignInView.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI
import Combine
import UIKit

 final class StatusNavigation: ObservableObject {
    
    @Published var statusNavigation: StatusViews = StatusViews.logInView
}


struct SignInView: View {
    @EnvironmentObject var StatusNavigation: StatusNavigation
    
    var body: some View {
        ZStack{
            
            VStack() {
                Text("Sign In")
                    .font(.largeTitle).foregroundColor(Color.white)
                    .padding([.top, .bottom], 40)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                Image("logoAlert")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10.0, x: 20, y: 10)
                    .padding(.bottom, 50)
                
                HStack{
                    Button(action: {
                        self.StatusNavigation.statusNavigation = StatusViews.facebookView
                    }) {
                        Text("Facebook")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                    }.padding(.leading, 50)
                    
                    Spacer()
                }.padding()
                HStack{
                    Button(action: {self.StatusNavigation.statusNavigation = .homeView}) {
                        Text("Gmail")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                    }.padding(.leading, 50)
                    
                    Spacer()
                }.padding()
                HStack{
                    Button(action: {self.StatusNavigation.statusNavigation = .homeView}) {
                        Text("Twitter")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                    }.padding(.leading, 50)
                    
                    Spacer()
                }.padding()
                
                
                Spacer()
                HStack(spacing: 0) {
                    
                    Button(action: {}) {
                        Text("resetcompany.net")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        
                        
                    }
                }
            }
        }.background(
            LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
