import Foundation


class GetScheduleList {
    typealias CompletionHandler = ([Activity]?) -> Void
    
    private let fetchApi: FetchApi
    
    init() {
        self.fetchApi = FetchApi()
    }
    
    func getSchedule(completion: @escaping [Activity]) {
        fetchApi.getScheduleList { scheduleList in
            if let scheduleList = scheduleList {
                let listActivity: [Activity] = scheduleList.map { activity in
                    Activity(
                        id: activity.id,
                        createdTime: activity.createdTime,
                        start: activity.fields.start,
                        location: activity.fields.location,
                        notes: activity.fields.notes,
                        activity: activity.fields.activity,
                        end: activity.fields.end,
                        type: activity.fields.type,
                        speakers: activity.fields.speakers
                    )
                }
                completion(listActivity)
            } else {
                print("Error retrieving schedule list")
                completion(nil)
            }
        }
    }
}
