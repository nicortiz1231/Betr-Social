//
//  CreateBetViewModel.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/13/24.
//

import Firebase

class CreateBetViewModel: ObservableObject {
    func uploadBet(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let bet = Bet(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await BetService.uploadBet(bet)
        
    }
}
