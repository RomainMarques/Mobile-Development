//
//  ListRow.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation
import SwiftUI

struct ListActivityRow: View {
    let activity: Activity
    let helper: Helper = Helper()
    var body: some View {
        VStack {
            Text(activity.activity)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.headline)
            Text(helper.formatDate(dateStr: activity.start)).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).font(.footnote)
        }
        .padding(5)
    }
}

#Preview {
    ContentView()
}
