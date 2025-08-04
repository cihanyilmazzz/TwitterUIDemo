//
//  CustomInputField.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 04/08/2025.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.darkGray))
                TextField(placeholderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}


#Preview {
    CustomInputField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
}
