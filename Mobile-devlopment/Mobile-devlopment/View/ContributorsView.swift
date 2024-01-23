//
//  PeopleView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation
import SwiftUI

struct ContributorsView: View {
    let contributors: [Contributor]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(contributors, id: \.id) { contributor in
                        NavigationLink(destination: ContributorView(contributor: contributor)) {
                            ListContributorRow(contributor: contributor)
                        }
                    }
                } header: {
                    Text("Speakers at the event")
                        .foregroundStyle(.white).font(.title3)
                }
            }
            .navigationTitle(
                Text("Speakers")
            )
            .background(backgroundGradient)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}
