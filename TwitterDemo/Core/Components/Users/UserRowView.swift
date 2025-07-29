//
//  UserRowView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 29/07/2025.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("aragorn")
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
            //Circle()
                //.frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Aragorn")
                    .font(.subheadline).bold()
                    .foregroundStyle(Color.black)
                Text("aragorn")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

#Preview {
    UserRowView()
}
