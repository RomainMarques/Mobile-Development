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
            Text(activity.activity)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.headline)
            Text(activity.formatDate(dateStr: activity.start)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).font(.footnote)
        }
        .padding(5)
    }
}

#Preview {
    ContentView()
}
