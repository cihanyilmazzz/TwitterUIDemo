//
//  UserStatsView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 29/07/2025.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
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
    }
}

#Preview {
    UserStatsView()
}
