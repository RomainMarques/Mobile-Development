//
//  ContributorView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation
import SwiftUI
// pour afficher le detail de lactivite
struct ListContributorRow: View {
    var contributor: Contributor
    var body: some View {
        VStack {
            Text(contributor.name)
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}
