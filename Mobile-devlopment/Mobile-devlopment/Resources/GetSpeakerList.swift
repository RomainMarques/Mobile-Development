import Foundation


class GetSpeakerList {
    typealias CompletionHandler = ([Contributor]?) -> Void
    
    private let fetchApi: SpeakerFetch
    
    init() {
        self.fetchApi = SpeakerFetch()
    }
    
    func getSpeaker(completion: @escaping ([Contributor]?) -> Void) {
        fetchApi.getSpeakerList { speakerList in
            if let speakerList = speakerList {
                let listContributors: [Contributor] = speakerList.map { contributor in
                    Contributor(id: contributor.id,
                                createdTime: contributor.createdTime,
                                email: contributor.fields.email,
                                confirmed: contributor.fields.confirmed,
                                company: contributor.fields.company,
                                name: contributor.fields.name,
                                phone: contributor.fields.phone,
                                role: contributor.fields.role)
                }
                completion(listContributors)
            } else {
                print("Error retrieving schedule list")
                completion(nil)
            }
        }
    }

}
