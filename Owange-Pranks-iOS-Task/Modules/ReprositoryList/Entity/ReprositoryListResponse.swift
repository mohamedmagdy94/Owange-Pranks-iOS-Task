// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reprositoryListResponse = try? newJSONDecoder().decode(ReprositoryListResponse.self, from: jsonData)

import Foundation
import Unrealm

// MARK: - ReprositoryListResponseElement
struct ReprositoryListResponseElement: Codable,Realmable {
    let id: Int?
    let nodeID, name, fullName: String?
    let reprositoryListResponsePrivate: Bool?
    let owner: Owner?
    let htmlURL: String?
    let reprositoryListResponseDescription: String?
    let fork: Bool?
    let url: String?
    let forksURL: String?
    let keysURL, collaboratorsURL: String?
    let teamsURL, hooksURL: String?
    let issueEventsURL: String?
    let eventsURL: String?
    let assigneesURL, branchesURL: String?
    let tagsURL: String?
    let blobsURL, gitTagsURL, gitRefsURL, treesURL: String?
    let statusesURL: String?
    let languagesURL, stargazersURL, contributorsURL, subscribersURL: String?
    let subscriptionURL: String?
    let commitsURL, gitCommitsURL, commentsURL, issueCommentURL: String?
    let contentsURL, compareURL: String?
    let mergesURL: String?
    let archiveURL: String?
    let downloadsURL: String?
    let issuesURL, pullsURL, milestonesURL, notificationsURL: String?
    let labelsURL, releasesURL: String?
    let deploymentsURL: String?
    let createdAt, updatedAt, pushedAt: Date?
    let gitURL, sshURL: String?
    let cloneURL: String?
    let svnURL: String?
    let homepage: String?
    let size, stargazersCount, watchersCount: Int?
    let language: String?
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool?
    let hasPages: Bool?
    let forksCount: Int?
    let mirrorURL: String?
    let archived, disabled: Bool?
    let openIssuesCount: Int?
    let license: License?
    let forks, openIssues, watchers: Int?
    let defaultBranch: DefaultBranch?
    
    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case reprositoryListResponsePrivate = "private"
        case owner
        case htmlURL = "html_url"
        case reprositoryListResponseDescription = "description"
        case fork, url
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case homepage, size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case forksCount = "forks_count"
        case mirrorURL = "mirror_url"
        case archived, disabled
        case openIssuesCount = "open_issues_count"
        case license, forks
        case openIssues = "open_issues"
        case watchers
        case defaultBranch = "default_branch"
    }
    init() {
           self.id = nil
           self.nodeID = nil
           self.name = nil
           self.fullName = nil
           self.reprositoryListResponsePrivate = nil
           self.owner = nil
           self.htmlURL = nil
           self.reprositoryListResponseDescription = nil
           self.fork = nil
           self.url = nil
           self.forksURL = nil
           self.keysURL = nil
           self.collaboratorsURL = nil
           self.teamsURL = nil
           self.hooksURL = nil
           self.issueEventsURL = nil
           self.eventsURL = nil
           self.assigneesURL = nil
           self.branchesURL = nil
           self.tagsURL = nil
           self.blobsURL = nil
           self.gitTagsURL = nil
           self.gitRefsURL = nil
           self.treesURL = nil
           self.statusesURL = nil
           self.languagesURL = nil
           self.stargazersURL = nil
           self.contributorsURL = nil
           self.subscribersURL = nil
           self.subscriptionURL = nil
           self.commitsURL = nil
           self.gitCommitsURL = nil
           self.commentsURL = nil
           self.issueCommentURL = nil
           self.contentsURL = nil
           self.compareURL = nil
           self.mergesURL = nil
           self.archiveURL = nil
           self.downloadsURL = nil
           self.issuesURL = nil
           self.pullsURL = nil
           self.milestonesURL = nil
           self.notificationsURL = nil
           self.labelsURL = nil
           self.releasesURL = nil
           self.deploymentsURL = nil
           self.createdAt = nil
           self.updatedAt = nil
           self.pushedAt = nil
           self.gitURL = nil
           self.sshURL = nil
           self.cloneURL = nil
           self.svnURL = nil
           self.homepage = nil
           self.size = nil
           self.stargazersCount = nil
           self.watchersCount = nil
           self.language = nil
           self.hasIssues = nil
           self.hasProjects = nil
           self.hasDownloads = nil
           self.hasWiki = nil
           self.hasPages = nil
           self.forksCount = nil
           self.mirrorURL = nil
           self.archived = nil
           self.disabled = nil
           self.openIssuesCount = nil
           self.license = nil
           self.forks = nil
           self.openIssues = nil
           self.watchers = nil
           self.defaultBranch = nil
       }
       
       
    
}

enum DefaultBranch: String, Codable {
    case master = "master"
}

// MARK: - License
struct License: Codable ,Realmable{
    
    let key: Key?
    let name: Name?
    let spdxID: SpdxID?
    let url: String?
    let nodeID: LicenseNodeID?
    
    enum CodingKeys: String, CodingKey {
        case key, name
        case spdxID = "spdx_id"
        case url
        case nodeID = "node_id"
    }
    
    init() {
        self.key = nil
        self.name = nil
        self.spdxID = nil
        self.url = nil
        self.nodeID = nil
    }
    
    
}

enum Key: String, Codable {
    case apache20 = "apache-2.0"
    case mit = "mit"
    case other = "other"
}

enum Name: String, Codable {
    case apacheLicense20 = "Apache License 2.0"
    case mitLicense = "MIT License"
    case other = "Other"
}

enum LicenseNodeID: String, Codable {
    case mDc6TGljZW5ZZTA = "MDc6TGljZW5zZTA="
    case mDc6TGljZW5ZZTEz = "MDc6TGljZW5zZTEz"
    case mDc6TGljZW5ZZTI = "MDc6TGljZW5zZTI="
}

enum SpdxID: String, Codable {
    case apache20 = "Apache-2.0"
    case mit = "MIT"
    case noassertion = "NOASSERTION"
}

// MARK: - Owner
struct Owner: Codable ,Realmable{
    
    let login: Login?
    let id: Int?
    let nodeID: OwnerNodeID?
    let avatarURL: String?
    let gravatarID: String?
    let url, htmlURL, followersURL: String?
    let followingURL: FollowingURL?
    let gistsURL: GistsURL?
    let starredURL: StarredURL?
    let subscriptionsURL, organizationsURL, reposURL: String?
    let eventsURL: EventsURL?
    let receivedEventsURL: String?
    let type: TypeEnum?
    let siteAdmin: Bool?
    
    enum CodingKeys: String, CodingKey {
        case login, id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type
        case siteAdmin = "site_admin"
    }
    
   init() {
       self.login = nil
       self.id = nil
       self.nodeID = nil
       self.avatarURL = nil
       self.gravatarID = nil
       self.url = nil
       self.htmlURL = nil
       self.followersURL = nil
       self.followingURL = nil
       self.gistsURL = nil
       self.starredURL = nil
       self.subscriptionsURL = nil
       self.organizationsURL = nil
       self.reposURL = nil
       self.eventsURL = nil
       self.receivedEventsURL = nil
       self.type = nil
       self.siteAdmin = nil
   }
}

enum EventsURL: String, Codable {
    case httpsAPIGithubCOMUsersFacebookEventsPrivacy = "https://api.github.com/users/facebook/events{/privacy}"
}

enum FollowingURL: String, Codable {
    case httpsAPIGithubCOMUsersFacebookFollowingOtherUser = "https://api.github.com/users/facebook/following{/other_user}"
}

enum GistsURL: String, Codable {
    case httpsAPIGithubCOMUsersFacebookGistsGistID = "https://api.github.com/users/facebook/gists{/gist_id}"
}

enum Login: String, Codable {
    case facebook = "facebook"
}

enum OwnerNodeID: String, Codable {
    case mdEyOk9YZ2FuaXphdGlvbjY5NjMX = "MDEyOk9yZ2FuaXphdGlvbjY5NjMx"
}

enum StarredURL: String, Codable {
    case httpsAPIGithubCOMUsersFacebookStarredOwnerRepo = "https://api.github.com/users/facebook/starred{/owner}{/repo}"
}

enum TypeEnum: String, Codable {
    case organization = "Organization"
}

typealias ReprositoryListResponse = [ReprositoryListResponseElement]

