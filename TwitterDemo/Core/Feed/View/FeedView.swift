//
//  FeedView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                
                    TweetRowView()
                        
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
