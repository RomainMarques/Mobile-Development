import Foundation

// Define the model Schedule
struct Schedule: Codable {
    let id: String
    let createdTime: String
    let fields: ScheduleFields
    
    struct ScheduleFields: Codable {
        let start: String
        let location: String
        let notes: String?
        let activity: String
        let end: String
        let type: String
        let speakers: [String]?
    }
}

// Protocol for the request factory
protocol RequestScheduleProtocol {
    func createRequest(urlStr: String) -> URLRequest
    func getScheduleList(callback: @escaping ([Schedule]?) -> Void)
}

// Implementation of the request factory
class FetchApi: RequestScheduleProtocol {
    func createRequest(urlStr: String) -> URLRequest {
        var request = URLRequest(url: URL(string: urlStr)!)
        request.addValue("Bearer patikQ2NLt8ZuefWF.bab4360644fa68db943fec3ff9db7a0bb990674f092136422b3a0be9212e229d", forHTTPHeaderField: "Authorization")
        return request
    }

    func getScheduleList(callback: @escaping ([Schedule]?) -> Void) {
        let urlStr = "https://api.airtable.com/v0/apps3Rtl22fQOI9Ph/%F0%9F%93%86%20Schedule"
        let request = createRequest(urlStr: urlStr)
        print("request \(request)")

        // Use URLSession to perform the request
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Request error: \(error)")
                callback(nil)
                return
            }

            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601

                    let scheduleList = try decoder.decode(ScheduleListResponse.self, from: data)
                    callback(scheduleList.records)
                } catch {
                    print("JSON decoding error: \(error)")
                    callback(nil)
                }
            }
        }.resume()
    }
}

// Define a struct to represent the entire API response
struct ScheduleListResponse: Codable {
    let records: [Schedule]
}
