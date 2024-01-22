//
//  Activity.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

class Activity: Decodable {
    let id: String
    let createdTime: String
    
    let start: String
    let location: String
    let notes: String?
    let activity: String
    let end: String
    let type: String
    let speakers: [String]?
    
    init(id: String, createdTime: String, start: String, location: String, notes: String?, activity: String, end: String, type: String, speakers: [String]?) {
        self.id = id
        self.createdTime = createdTime
        self.start = start
        self.location = location
        self.notes = notes
        self.activity = activity
        self.end = end
        self.type = type
        self.speakers = speakers
    }
}
