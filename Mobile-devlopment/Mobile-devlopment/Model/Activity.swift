//
//  Activity.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

struct Activity: Decodable {
    let id: String
    let createdTime: String
    
    let start: String
    let location: String
    let notes: String?
    let activity: String
    let end: String
    let type: String
    let speakers: [String]?
    
    func formatDate(dateStr : String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
        
        let date = dateFormatter.date(from: dateStr)!
        dateFormatter.dateFormat = "MM-dd-yyyy '@' HH:mm:ss"
        
        return dateFormatter.string(from: date)
    }
}
