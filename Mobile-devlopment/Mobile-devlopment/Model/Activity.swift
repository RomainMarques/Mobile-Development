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
}
