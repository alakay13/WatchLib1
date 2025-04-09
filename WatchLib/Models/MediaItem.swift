//
//  MediaItem.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import Foundation

struct MediaItem: Codable, Identifiable {
    let id: String
    let title: String
    let genre: String
    let comments: String
    
}
