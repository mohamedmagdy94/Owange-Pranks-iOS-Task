//
//  ReprositoryListError.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation

enum ReprositoryListError: Error{
    case SERVER_ERROR
    case INTERNET_ERROR
    case NO_MORE_ITEMS
    
    var localizedDescription: String{
        switch self {
        case .SERVER_ERROR:
            return "Server Error"
        case .INTERNET_ERROR:
            return "Internet Error"
        case .NO_MORE_ITEMS:
            return "No More Items"
        }
    }
    
}
