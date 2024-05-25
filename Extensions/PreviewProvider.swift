//
//  PreviewProvider.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/11/24.
//

import SwiftUI
import Firebase

extension PreviewProvider {
   static var dev: DeveloperPreview {
      return DeveloperPreview.shared
    }
}

class DeveloperPreview {
static let shared = DeveloperPreview()

    let user = User(fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1", id: NSUUID().uuidString)
    
    let bet = Bet(ownerUid: "123", caption: "This is a test bet", timestamp: Timestamp(), likes: 0)
}
