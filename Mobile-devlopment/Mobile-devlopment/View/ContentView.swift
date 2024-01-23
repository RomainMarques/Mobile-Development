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
    @ObservedObject var viewModelActivity: ViewModelActivity = ViewModelActivity()
    @ObservedObject var viewModelContributor: ViewModelContributor = ViewModelContributor()
    @State var showSchedule : Bool = true
   
    var body: some View {
        HStack {
            Image("schedule-vector")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(40)
                .onTapGesture {
                    self.showSchedule = true
                }
            Image("user-icon")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(40)
                .onTapGesture {
                    self.showSchedule = false
                }
        }
        if (showSchedule) {
            ActivitiesView(activities: viewModelActivity.activities)
        } else {
            ContributorsView(contributors: viewModelContributor.contributors)
        }
        
    }
}


#Preview {
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}
