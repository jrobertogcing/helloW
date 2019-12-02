//
//  TabBarView.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 12/1/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI

struct TabBar: View {
   var body: some View {
      TabView {
         Home().tabItem {
            Image("IconHome")
            Text("Home")
         }
         .tag(1)
         ContentView().tabItem {
            Image("IconCards")
            Text("Certificates")
         }
         .tag(2)
         Settings().tabItem {
            Image("IconSettings")
            Text("Settings")
         }
         .tag(3)
      }
      .edgesIgnoringSafeArea(.top)
   }
}

#if DEBUG
struct TabBar_Previews: PreviewProvider {
   static var previews: some View {
      TabBar()
//         .environment(\.colorScheme, .dark)
   }
}
#endif
