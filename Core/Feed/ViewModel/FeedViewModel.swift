





import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var bets = [Bet]()
    
    init() {
        Task { try await fetchBets() }
    }
    
    @MainActor
    func fetchBets() async throws {
        self.bets = try await BetService.fetchBets()
        try await fetchUserDataForBets()
    }
    
    private func fetchUserDataForBets() async throws {
        for i in 0 ..< bets.count {
            let bet = bets[i]
            let ownerUid = bet.ownerUid
            let betUser = try await UserService.fetchUser(withUid: ownerUid)
            
            bets[i].user = betUser
            
        }
    }
}
