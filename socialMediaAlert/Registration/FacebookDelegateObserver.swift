//
//  FacebookDelegateObserver.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 11/30/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import SwiftUI
import WebKit
import Combine

struct FacebookDelegateObserver: UIViewControllerRepresentable {
    let vc = FacebookViewController()

    func makeUIViewController(context: Context) -> FacebookViewController {
        return vc
    }

    func updateUIViewController(_ uiViewController: FacebookViewController, context: Context) { }
    func makeCoordinator() -> Coordinator {
        Coordinator(vc: vc)
    }

    class Coordinator: NSObject {
        
        init(vc: FacebookViewController) {
        super.init()
        }
        
    }
}
