//
//  UpdateStoreView.swift
//  socialMediaAlert
//
//  Created by Roberto Gonzalez on 12/1/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Combine
import SwiftUI

class UpdateStore: ObservableObject {
   var willChange = PassthroughSubject<Void, Never>()

   var updates: [Update] {
      didSet {
         willChange.send()
      }
   }

   init(updates: [Update] = []) {
      self.updates = updates
   }
}
