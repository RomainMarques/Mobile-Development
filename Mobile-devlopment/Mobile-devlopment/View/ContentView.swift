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
        if (showSchedule) {
            NavigationView {
                ActivitiesView(activities: viewModelActivity.activities)
                    .navigationBarHidden(true)
            }
            .accentColor(Color.white)
        } else {
            ContributorsView(contributors: viewModelContributor.contributors)
        }
        HStack {
            Image("schedule-vector")
                .resizable()
                .frame(width: 50, height: 50)
                .onTapGesture {
                    self.showSchedule = true
                }
            Image("user-icon")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(10)
                .onTapGesture {
                    self.showSchedule = false
                }
        }
    }
}


#Preview {
    ContentView(viewModelActivity: ViewModelActivity(), viewModelContributor: ViewModelContributor())
}
