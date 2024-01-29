//
//  ContributorView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation
import SwiftUI

struct ContributorView: View {
    var contributor: Contributor
    
    var body: some View {
        VStack {
            Image("user-icon")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                InfoView(title: "Name", value: contributor.name)
                InfoView(title: "Role", value: contributor.role)
                InfoView(title: "Email", value: contributor.email)
                InfoView(title: "Phone", value: contributor.phone)
                InfoView(title: "Company", value: contributor.company)
                InfoView(title: "The user is confirmed", value: String(contributor.confirmed!))
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            
            Divider()
            Spacer()
        }
        .background(backgroundGradient)
    }
}

#Preview {
    ContributorView(contributor: Contributor(id: "ix", createdTime: "23:43", email: "user@gmail.com", confirmed: true, company: "Alphabet", name: "Romain Marques", phone: "06666", speakingAt: ["main room", "diner room"], role: "chief"))
}
