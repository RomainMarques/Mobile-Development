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
                .padding(40)
            VStack(alignment: .leading) {
                HStack {
                    Text("Name:")
                    Text(contributor.name).foregroundStyle(.blue)
                        .bold()
                }
                HStack {
                    Text("Role:")
                    Text(contributor.role).foregroundStyle(.blue).bold()
                }
                HStack {
                    Text("Email:")
                    Text(contributor.email).foregroundStyle(.blue)
                        .bold()
                }
                HStack {
                    Text("Phone:")
                    Text(contributor.phone).foregroundStyle(.blue).bold()
                }
                HStack {
                    Text("Company:")
                    Text(contributor.company).foregroundStyle(.blue).bold()
                }
                HStack {
                    Text("The user is confirmed:")
                    Text(String(contributor.confirmed!)).foregroundStyle(.blue).bold()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ContributorView(contributor: Contributor(id: "ix", createdTime: "23:43", email: "user@gmail.com", confirmed: true, company: "Alphabet", name: "Romain Marques", phone: "06666", speakingAt: ["main room", "diner room"], role: "chief"))
}
