//
//  User.swift
//  Betr
//
//  Created by Nick Ortiz on 7/12/23.
//

import FirebaseFirestoreSwift
import Firebase
import Foundation

struct User: Identifiable, Codable, Hashable {
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
    var link: String?
    let id: String
    
    var isCurrentUser: Bool {
        return id == Auth.auth().currentUser?.uid
    }
}

