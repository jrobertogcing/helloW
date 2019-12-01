//
//  ContentView.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var onboardShowing = true

    var body: some View {
        NavigationView {
                   VStack(alignment: .leading, spacing: 0) {

                       Spacer()
                           .frame(minHeight: 24, idealHeight: 80, maxHeight: 80)

                       Group {
                           Text("SocialMedia Alert")
//                                .foregroundColor(Color.red)
                       }
//                       .modifier(MarketSans(.largeTitle))
                       .layoutPriority(1.0)

                       Spacer()
                           .frame(minHeight: 12, idealHeight: 48, maxHeight: 48)

                           HStack(spacing: 0) {
                               Image("self.data.item[num].image")
                                   .resizable()
                                   .frame(minWidth: 40, idealWidth: 56, maxWidth: 56, minHeight: 40, idealHeight: 56, maxHeight: 56)
                                   .aspectRatio(1, contentMode: .fit)
                                   .padding(.trailing, 24)
                               VStack(alignment: .leading, spacing: 0) {
                                   Text("self.data.item[num].title")
                                       .font(.headline)
                                       .padding(.bottom, 4)
                                   Text("self.data.item[num].description")
                                       .font(.subheadline)
//                                       .foregroundColor(.textGrey)
                               }
                           }
                           Spacer()
                               .frame(minHeight: 12, idealHeight: 40, maxHeight: 40)
                       
                       Spacer()
                           .frame(minHeight: 20, maxHeight: .infinity)

                       Button(action: {self.onboardShowing = false}, label: {Text("Continue")})
//                           .buttonStyle(PrimaryButton())
                           .padding(.bottom, 16)
//                    .modifier(MarketSans(.headline))
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color.accentColor)
                   }
                   .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                   .padding(.horizontal, 16)
                   .accentColor(.red)
               }.opacity(onboardShowing ? 100 : 0)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
