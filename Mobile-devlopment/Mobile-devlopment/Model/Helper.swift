//
//  Helper.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 29/01/2024.
//

import Foundation

struct Helper {
    func isFirstDateStringBeforeSecond(firstDateString: String, secondDateString: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"

        guard let firstDate = dateFormatter.date(from: firstDateString),
              let secondDate = dateFormatter.date(from: secondDateString) else {
            print("Error parsing the date")
            return false
        }

        return firstDate < secondDate
    }
    
    func formatDate(dateStr : String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
        
        let date = dateFormatter.date(from: dateStr)!
        dateFormatter.dateFormat = "MM-dd-yyyy '@' HH:mm:ss"
        
        return dateFormatter.string(from: date)
    }
    
    func formatDays(dateStr : String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
            
        if let date = dateFormatter.date(from: dateStr) {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.year, .month, .day], from: date)
            return String(format: "%02d/%02d/%04d", components.day ?? 0, components.month ?? 0, components.year ?? 0)
        }
        return nil
    }
    
    func formatHoursAndMinutes(dateStr: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
        
        if let date = dateFormatter.date(from: dateStr) {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.hour, .minute], from: date)
            return String(format: "%02dh%02d", components.hour ?? 0, components.minute ?? 0)
        }
        
        return nil
    }
}
