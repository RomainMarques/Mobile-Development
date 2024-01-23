//
//  ContentView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.cyan, Color.mint],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.activities, id: \.id) { activity in
                NavigationLink(destination: ActivityView(activity: activity)) {
                    ListRow(activity: activity)
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
