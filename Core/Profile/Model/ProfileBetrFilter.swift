//
//  ProfileBetrFilter.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/8/24.
//

import Foundation

enum ProfileBetrFilter: Int, CaseIterable, Identifiable {
    case bets
    case replies
    case games
    
    var title: String {
        switch self {
        case .bets: return "Bets"
        case .replies: return "Replies"
        case .games: return "Games"
            
        }
    }
    
    var id: Int { return self.rawValue}
}
