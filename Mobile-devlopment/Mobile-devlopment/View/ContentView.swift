//
//  ContentView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.mint, Color.cyan],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
   
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(viewModel.activities, id: \.id) { activity in
                        if activity.start.contains("02-08") {
                            NavigationLink(destination: ActivityView(activity: activity)) {
                                ListRow(activity: activity)
                            }
                        }
                    }
                } header: {
                    Text("Day 1").foregroundStyle(.white).font(.title3)
                }
                Section {
                    ForEach(viewModel.activities, id: \.id) { activity in
                        if activity.start.contains("02-09") {
                            NavigationLink(destination: ActivityView(activity: activity)) {
                                ListRow(activity: activity)
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
    ContentView(viewModel: ViewModel())
}
