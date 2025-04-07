//
//  WatchLibApp.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import FirebaseCore
import SwiftUI

@main
struct WatchLibApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
