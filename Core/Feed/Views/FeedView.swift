//
//  FeedView.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/8/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.bets) { bet in
                        BetCell(bet: bet)
                        }
                    .padding(.top)
                      }
                   }
                .refreshable {
                    Task { try await viewModel.fetchBets() }
                }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    Task { try await viewModel.fetchBets() }
                } label : {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                }
                
               }
            }
            .padding([.top, .horizontal])
         }
       }
    }
    



struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}        
