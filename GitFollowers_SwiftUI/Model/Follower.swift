//
//  Follower.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import Foundation

struct Follower: Identifiable, Hashable, Codable {
    let id = UUID()
    let login: String
    let avatarUrl: String
}
