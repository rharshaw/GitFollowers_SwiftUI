//
//  Follower.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import Foundation
import SwiftUI

struct Follower: Hashable, Codable {
    let login: String
    let avatarUrl: String
}
