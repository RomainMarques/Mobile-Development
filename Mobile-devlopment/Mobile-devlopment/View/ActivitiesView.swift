//
//  ActivitiesView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation
import SwiftUI

let dateDay2 = "2024-02-09T00:00:00.000Z"

struct ActivitiesView: View {
    let activities: [Activity]
    let helper: Helper = Helper()
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(activities, id: \.id) { activity in
                        if 
                            helper.isFirstDateStringBeforeSecond(firstDateString: activity.start, secondDateString: dateDay2) {
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
                        if !helper.isFirstDateStringBeforeSecond(firstDateString: activity.start, secondDateString: dateDay2) {
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
