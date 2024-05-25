//
//  BetService.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/13/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct BetService {
    
    static func uploadBet(_ bet: Bet) async throws {
        guard let betData = try? Firestore.Encoder().encode(bet) else { return }
        try await Firestore.firestore().collection("bets").addDocument(data: betData)
        
    }
    
    static func fetchBets() async throws -> [Bet] {
        let snapshot = try await Firestore
            .firestore()
            .collection("bets")
            .order(by: "timestamp", descending: true)
            .getDocuments()
        
        return snapshot.documents.compactMap{( try? $0.data(as: Bet.self) )}
    }
}
