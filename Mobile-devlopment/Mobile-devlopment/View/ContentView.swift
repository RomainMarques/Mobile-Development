//
//  ContentView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel: ViewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Schedule")
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
