//
//  NewtweetView.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 29/07/2025.
//

import SwiftUI

struct NewtweetView: View {
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Dismiss")
                } label: {
                    Text("Cancel")
                        .foregroundStyle(Color(.systemBlue))
                }
                Spacer()
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundStyle(Color.white)
                        .clipShape(Capsule())
                        
                }

            }
            .padding()
            HStack(alignment: .top) {
                Image("aragorn")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 64, height: 64)
                    
                TextArea("What's happening?", text: $caption)
            }
            .padding()
        }
        .navigationTitle("New tweet")
        Spacer()
    }
}

#Preview {
    NewtweetView()
}
