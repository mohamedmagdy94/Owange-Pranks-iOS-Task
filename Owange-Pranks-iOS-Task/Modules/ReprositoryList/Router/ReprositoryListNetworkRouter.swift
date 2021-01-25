//
//  ReprositoryListNetworkRouter.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import Moya

enum ReprositoryListNetworkRouter {
    case getRepos
}

extension ReprositoryListNetworkRouter: TargetType {
    var sampleData: Data {
        switch self {
        case .getRepos:
            return Data()
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    var baseURL: URL { return URL(string: APIConstant.BASE_URL.rawValue)! }
        
    var path: String {
        switch self {
        case .getRepos:
            return "/raw/bkf64ZUr"
        }
    }
    var method: Moya.Method {
        switch self {
        case .getRepos:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .getRepos:
            return .requestPlain
        }
    }
    
}

