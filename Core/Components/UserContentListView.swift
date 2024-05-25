//
//  UserContentListView.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/11/24.
//

import SwiftUI

struct UserContentListView: View {
    @State private var selectedFilter: ProfileBetrFilter = .bets
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileBetrFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    var body: some View {
        // user content list view
        VStack {
            HStack {
                ForEach(ProfileBetrFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold :
                                    .regular)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id:"item", in: animation)
                            
                            
                        } else {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: filterBarWidth, height: 1)
                            
                        }
                        
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedFilter = filter
                            
                            
                        }
                    }
                }
            }
            
            LazyVStack {
                ForEach (0 ... 10, id: \.self) { bet in
                 //   BetCell()
                }
            }
        }
        .padding(.vertical, 8)
    }
}


#Preview {
    UserContentListView()
}
