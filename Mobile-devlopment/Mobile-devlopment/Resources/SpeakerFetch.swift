import Foundation

// Define the model Speaker
struct Speaker: Codable {
    let id: String
    let createdTime: String
    let fields: SpeakerFields
    
    struct SpeakerFields: Codable {
        let email: String
        let confirmed: Bool?
        let company: String
        let name: String
        let phone: String
        let role: String
        
        enum CodingKeys: String, CodingKey {
            case email = "Email"
            case confirmed = "Confirmed?"
            case company = "Company"
            case name = "Name"
            case phone = "Phone"
            case role = "Role"
        }
    }
}

struct SpeakerListResponse: Codable {
    let records: [Speaker]
}

// Protocol for the request factory
protocol RequestSpeakerProtocol {
    func createRequest(urlStr: String) -> URLRequest
    func getSpeakerList(callback: @escaping ([Speaker]?) -> Void)
}

// Implementation of the request factory
class SpeakerFetch: RequestSpeakerProtocol {
    func createRequest(urlStr: String) -> URLRequest {
        var request = URLRequest(url: URL(string: urlStr)!)
        request.addValue("Bearer patikQ2NLt8ZuefWF.bab4360644fa68db943fec3ff9db7a0bb990674f092136422b3a0be9212e229d", forHTTPHeaderField: "Authorization")
        return request
    }

    func getSpeakerList(callback: @escaping ([Speaker]?) -> Void) {
        let urlStr = "https://api.airtable.com/v0/apps3Rtl22fQOI9Ph/%F0%9F%8E%A4%20Speakers?maxRecords=3&view=All%20speakers"
        let request = createRequest(urlStr: urlStr)

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

                    let speakerList = try decoder.decode(SpeakerListResponse.self, from: data)
                    callback(speakerList.records)
                } catch {
                    print("JSON decoding error: \(error)")
                    callback(nil)
                }
            }
        }.resume()
    }
}

