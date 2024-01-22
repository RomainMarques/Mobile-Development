//
//  GetScheduleList.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

class GetScheduleList {
    func getSchedule() -> [Activity] {
        print("je rentre")
        let fetchApi = FetchApi()
        var listActivity: [Activity] = []
        fetchApi.getScheduleList { scheduleList in
            if let scheduleList = scheduleList {
                for activity in scheduleList {
                    listActivity.append(Activity(id: activity.id/*, createdTime: activity.createdTime, start: activity.fields.start, location: activity.fields.location, notes: activity.fields.notes, activity: activity.fields.activity, end: activity.fields.end, type: activity.fields.type, speakers: activity.fields.speakers*/))
                }
            } else {
                print("Erreur lors de la récupération de la liste de meubles")
            }
        }
        return listActivity
    }
}
