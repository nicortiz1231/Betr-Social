//
//  ExploreView.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/16/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // Menu
                    Text("Menu")
                        .font(.headline)
                        .padding(.horizontal)

                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0..<10) { index in
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(0..<10) { subIndex in
                                            RoundedRectangle(cornerRadius: 8)
                                                .frame(width: 185, height: 115)
                                                .foregroundColor(Color.gray.opacity(0.2))
                                                .padding(.horizontal, 2)
                                        }
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                        }
                    }

                 
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(viewModel.users) { user in
                                NavigationLink(value: user) {
                                    VStack {
                                        UserCell(user: user)
                                        Divider()
                                    }
                                    .padding(.vertical, 4)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .searchable(text: $searchText, prompt: "Search")
            .onChange(of: searchText) { newValue in
                // Handle search text change
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}



