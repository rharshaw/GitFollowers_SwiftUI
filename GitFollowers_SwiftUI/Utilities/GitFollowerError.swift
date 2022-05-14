//
//  GitFollowerError.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import Foundation

enum NetworkError: String, Error {
    case invalidResponse = "Invalid Response"
    case unableToComplete = "Unable to complete"
    case invalidData = "Invalid Data"
}
