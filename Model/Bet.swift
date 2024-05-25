//
//  Bet.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/13/24.
//

import Firebase
import FirebaseFirestoreSwift

struct Bet: Identifiable, Codable {
    @DocumentID var betId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    
    var id: String {
        return betId ?? NSUUID().uuidString
    }
    
    var user: User?
}
