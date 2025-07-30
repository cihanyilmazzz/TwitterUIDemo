//
//  FeedView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                        
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("newtweet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .offset(x:2, y: -20)
                    .fullScreenCover(isPresented: $showNewTweetView) {
                        NewtweetView()
                    } 
            }
        }
    }
}

#Preview {
    FeedView()
}
