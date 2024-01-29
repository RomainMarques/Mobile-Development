//
//  ActivityView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation
import SwiftUI
// pour afficher le detail de lactivite
struct ActivityView: View {
    var activity: Activity
    let helper : Helper = Helper()
    var body: some View {
        Text("Schedule of the event")
        VStack(alignment: .leading) {
            HStack {
                Text("Name of the activity : ")
                Text(activity.activity).foregroundStyle(.blue)
                    .bold()
            }
            HStack {
                Text("Location : ")
                Text(activity.location).foregroundStyle(.blue)
                    .bold()
            }
            HStack {
                Text("Day of the activity : ")
                Text(helper.formatDays(dateStr: activity.start)!).foregroundStyle(.blue)
                    .bold()
            }
            HStack {
                Text("Start of the activity : ")
                Text(helper.formatHoursAndMinutes(dateStr: activity.start)!).foregroundStyle(.blue)
                    .bold()
            }
            HStack {
                Text("End of the activity : ")
                Text(helper.formatHoursAndMinutes(dateStr: activity.end)!).foregroundStyle(.blue)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}

