//
//  UberAppCloneApp.swift
//  UberAppClone
//
//  Created by Evelyn Morado on 12/20/23.
//

import SwiftUI
import SwiftData

@main
struct UberAppCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body : some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
