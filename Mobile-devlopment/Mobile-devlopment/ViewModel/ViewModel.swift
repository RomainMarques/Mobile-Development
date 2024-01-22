//
//  ViewModel.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

let ACTIVITY_TEST = [Activity(id: "a", createdTime: "co", start: "demain", location: "ici", notes: "d", activity: "d", end: "d", type: "String", speakers: nil)]

class ViewModel : ObservableObject {
    @Published var activities: [Activity] = []
    
    init() {
        self.getData()
    }
    
    private func check(activities : [Activity]?) {
        if let activities = activities {
            self.activities = activities
        } else {
            print("Error retrieving schedule list")
        }
    }
    
    private func getData() {
        let getScheduleList = GetScheduleList()
        getScheduleList.getSchedule(completion: check)
    }
}
