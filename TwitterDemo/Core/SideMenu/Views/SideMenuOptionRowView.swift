//
//  SideMenuOptionRowView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 29/07/2025.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel : SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundStyle(Color.gray)
            Text(viewModel.title)
                .foregroundStyle(Color.black)
                .font(.subheadline)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

#Preview {
    SideMenuOptionRowView(viewModel: .profile)
}
