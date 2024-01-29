//
//  ActivitiesView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation
import SwiftUI

struct ActivitiesView: View {
    let activities: [Activity]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(activities, id: \.id) { activity in
                        if activity.start.contains("02-08") {
                            NavigationLink(destination: ActivityView(activity: activity)) {
                                ListActivitytRow(activity: activity)
                            }
                        }
                    }
                } header: {
                    Text("Day 1").foregroundStyle(.white).font(.title3)
                }
                Section {
                    ForEach(activities, id: \.id) { activity in
                        if activity.start.contains("02-09") {
                            NavigationLink(destination: ActivityView(activity: activity)) {
                                ListActivitytRow(activity: activity)
                            }
                        }
                    }
                } header: {
                    Text("Day 2").foregroundStyle(.white).font(.title3)
                }
            }
            .navigationTitle(
                Text("Schedule")
            )
            .background(backgroundGradient)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    ActivitiesView(activities: ACTIVITY_TEST)
}
