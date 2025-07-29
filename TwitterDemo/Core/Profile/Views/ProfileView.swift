//
//  ProfileView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userInfo
            tweetFilterBar
            tweetsView
            
            
            
            
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundStyle(Color.white)
                        .offset(x: 16, y: 12)
                }

                Image("aragorn")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height:96)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        }
        .padding(.trailing)
    }
    
    var userInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Aragorn")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(Color(.systemBlue))
            }
            
            Text("@aragorn")
                .font(.subheadline)
                .foregroundStyle(Color.gray)
            
            Text("Your moms favorite warrior")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 20) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        
                    Text("Gondor")
                }
                
                HStack {
                    Image(systemName: "link")
                        
                    Text("www.aragorn.com")
                }
            }
            .font(.caption)
            .foregroundStyle(Color.gray)
            
            HStack(spacing: 20) {
                HStack(spacing: 4) {
                    Text("24")
                        .font(.headline)
                        .bold()
                        
                    Text("Following")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                HStack(spacing: 4) {
                    Text("7.4M")
                        .font(.headline)
                        .bold()
                        
                    Text("Followers")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            .padding(.top, 12)
        }
        .padding(.horizontal)
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) {item in
                VStack {
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(selectedFilter == item ? .semibold: .regular)
                        .foregroundStyle(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundStyle(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                            
                    } else {
                        Capsule()
                            .foregroundStyle(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y:16))
        .padding(.top, 12)
    }
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { _ in
                
                    TweetRowView()
                }
            }
        }
    }
}
