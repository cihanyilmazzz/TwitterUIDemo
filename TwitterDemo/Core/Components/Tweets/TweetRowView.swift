//
//  TweetRowView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Image("aragorn")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 56, height: 56)
                  
                  
                
                    
                // user info and tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack {
                        Text("Aragorn")
                            .font(.subheadline).bold()
                        Text("@aragorn")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                    }
                    
                    // tweet caption
                    Text("Riding north toward old allies. The winds of danger grow")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.leading,10)
            .padding(.top, 10)
            .padding(.trailing, 10)
           
            
            // action buttons
            
            HStack {
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                }
                Spacer()
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                }

            }
            .padding(.leading,35)
            .padding(.top, 10)
            .padding(.trailing, 35)
            .padding(.bottom, 10)
            Divider()
            
            
        }
       
        
    }
}

#Preview {
    TweetRowView()
}
