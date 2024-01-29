//
//  ViewModel.swift
//  Mobile-devlopment
//
//  Created by Romain Marques on 22/01/2024.
//

import Foundation

class ViewModelContributor : ObservableObject {
    @Published var contributors: [Contributor] = []
    
    init() {
        self.getData()
    }
    
    private func check(contributors : [Contributor]?) {
        if let contributors = contributors {
            self.contributors = contributors
        } else {
            print("Error retrieving speaker list")
        }
    }
    
    private func getData() {
        let getContributors = GetSpeakerList()
        getContributors.getSpeaker(completion: check)
    }
}
