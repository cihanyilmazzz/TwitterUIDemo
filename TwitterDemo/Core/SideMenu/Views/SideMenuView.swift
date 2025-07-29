//
//  SideMenuView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 29/07/2025.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("aragorn")
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Aragorn")
                    .font(.headline)
            }
            Text("@aragorn")
                .font(.caption)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview {
    SideMenuView()
}
