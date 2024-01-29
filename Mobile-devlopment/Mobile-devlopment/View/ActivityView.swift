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
    var body: some View {
        VStack {
            Text("Schedule of the event")
                .font(.title)
                .bold()
            
            VStack(alignment: .leading) {
                InfoView(title: "Name of the activity", value: activity.activity)
                InfoView(title: "Location", value: activity.location)
                InfoView(title: "Day of the activity", value: activity.formatDays(dateStr: activity.start)!)
                InfoView(title: "Start of the activity", value: activity.formatHoursAndMinutes(dateStr: activity.start)!)
                InfoView(title: "End of the activity", value: activity.formatHoursAndMinutes(dateStr: activity.end)!)
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
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}

