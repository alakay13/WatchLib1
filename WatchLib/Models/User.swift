//
//  User.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
