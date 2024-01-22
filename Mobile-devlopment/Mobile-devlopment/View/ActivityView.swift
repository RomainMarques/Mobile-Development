//
//  ActivityView.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation
import SwiftUI
// pour afficher le detail de lactivite
struct ActivityView: View {
    var activity: Activity
    var body: some View {
        VStack {
            Text("Schedule")
        }
        .padding()
    }
}

#Preview {
    ActivityView(activity: ACTIVITY_TEST[0])
}

