//
//  ExploreView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ... 20, id: \.self) { _ in
                            NavigationLink {
                               ProfileView()
                            } label: {
                                UserRowView()
                            }
                            
                        }
                    }
                }
            }
        }
        .navigationTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ExploreView()
}
