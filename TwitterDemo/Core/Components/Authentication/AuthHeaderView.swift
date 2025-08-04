//
//  AuthHeaderView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 04/08/2025.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        // header view
        VStack (alignment: .leading) {
            HStack {
                Spacer()
            }
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundStyle(Color.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

#Preview {
    AuthHeaderView(title1: "Hello", title2: "Welcome back")
}
