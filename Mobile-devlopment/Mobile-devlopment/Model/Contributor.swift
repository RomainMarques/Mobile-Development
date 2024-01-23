//
//  Speaker.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 23/01/2024.
//

import Foundation

struct Contributor: Decodable {
    let id: String
    let createdTime: String
    let email: String
    let confirmed: Bool?
    let company: String
    let name: String
    let phone: String
    let role: String
        
}
