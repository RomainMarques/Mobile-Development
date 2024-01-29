//
//  ViewModel.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

class ViewModelActivity : ObservableObject {
    @Published var activities: [Activity] = []
    
    init() {
        self.getData()
    }
    
    private func check(activities : [Activity]?) {
        if let activities = activities {
            self.activities = activities.sorted(by: { $1.start > $0.start })
        } else {
            print("Error retrieving schedule list")
        }
    }
    
    private func getData() {
        let getScheduleList = GetScheduleList()
        getScheduleList.getSchedule(completion: check)
    }
}
