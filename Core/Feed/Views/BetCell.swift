//
//  BetCell.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/8/24.
//

import SwiftUI

struct BetCell: View {
    let bet: Bet
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: bet.user, size: .small)
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Text(bet.user?.username ?? "")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                                
                     }
                }
                    
                    Text("I bet steph cury misses this time")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

struct BetCell_Previews: PreviewProvider {
    static var previews: some View {
        BetCell(bet: dev.bet)
    }
}
