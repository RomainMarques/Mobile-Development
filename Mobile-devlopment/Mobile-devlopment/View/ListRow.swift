//
//  ListRow.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation
import SwiftUI
// pour afficher un resume de l url sur la home page ou lutilisateur pourra cliquer dessus
struct ListRow: View {
    let activity: Activity
    var body: some View {
        VStack {
            
            Text(activity.location)
            Text(activity.start)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
