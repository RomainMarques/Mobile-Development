//
//  InfoView.swift
//  Mobile-devlopment
//
//  Created by Vincent Marguet on 29/01/2024.
//

import SwiftUI

struct InfoView: View {
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text("\(title):")
                .font(.headline)
                .foregroundColor(.black)
                .bold()
            
            Text(value)
                .font(.subheadline)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    InfoView(title: "Test", value: "test")
}
