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
        VStack {
            Text("Schedule")
            //Text(viewModel.activities[0].id)
            List(viewModel.activities, id: \.id, rowContent: { activity in
                Text(activity.id)
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
