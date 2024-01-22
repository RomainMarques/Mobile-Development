//
//  ContentView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.activities, id: \.id) { activity in
                NavigationLink(destination: ActivityView(activity: activity)) {
                    ListRow(activity: activity)
                }
            }
            .navigationTitle("Schedule")
        }
    }
}


#Preview {
    ContentView(viewModel: ViewModel())
}
