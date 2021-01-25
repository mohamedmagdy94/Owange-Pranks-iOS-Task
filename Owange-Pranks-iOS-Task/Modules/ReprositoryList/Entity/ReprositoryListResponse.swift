// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reprositoryListResponse = try? newJSONDecoder().decode(ReprositoryListResponse.self, from: jsonData)

import Foundation
import Unrealm

// MARK: - ReprositoryListResponseElement
struct ReprositoryListResponseElement: Codable,Realmable {
    let id: Int?
    let name: String?
    let fork: Bool?
    let language: String?
    let openIssuesCount: Int?
    let forks: Int?
    let repoDescription: String?
    let owner: Owner?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fork
        case language
        case openIssuesCount
        case forks
        case repoDescription = "description"
        case owner
    }
    
    init() {
        self.id = nil
        self.name = nil
        self.fork = nil
        self.language = nil
        self.openIssuesCount = nil
        self.forks = nil
        self.repoDescription = nil
        self.owner = nil
    }
    
    static func getMock()->ReprositoryListResponse{
        let url = Bundle.main.url(forResource: "RepoListResponse", withExtension: "json")!
        let jsonData = try! Data(contentsOf: url)
        let jsonTransformer = CodableTransformer()
        let responseModel = jsonTransformer.decodeObject(from: jsonData, to: ReprositoryListResponse.self)!
        return responseModel
    }
    
    static func getMockInJsonFormat()->Data{
        let codableTransformer = CodableTransformer()
        let resppnse = getMock()
        let json = codableTransformer.encodeObject(from: resppnse)!
        return json
    }
    
}

struct Owner: Codable,Realmable {
    let avatarURL: String?
    enum CodingKeys: String, CodingKey {
        case avatarURL = "avatar_url"
    }
    
    init() {
        self.avatarURL = nil
    }
}



typealias ReprositoryListResponse = [ReprositoryListResponseElement]

