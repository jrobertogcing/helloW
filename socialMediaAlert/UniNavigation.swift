//
//  UniNavigation.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI
import Combine
import UIKit

enum StatusViews{
    
    case none
    case facebookView
    case homeView
    case logInView

    
}

struct UniNavigation: View {
    
//    @EnvironmentObject var StatusNavigation: StatusNavigation
    @EnvironmentObject var StatusNavigation : StatusNavigation

    var body: some View {
        if StatusNavigation.statusNavigation == .facebookView {
            return AnyView(FacebookDelegateObserver())
        } else if StatusNavigation.statusNavigation == .logInView {
            return AnyView(LogInView())
        }
        else {
            return AnyView(ContentView())
        }
    }
}
