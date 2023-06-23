//
//  rudo_visionApp.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import SwiftUI

@main
struct rudo_visionApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }.windowStyle(.plain)


        WindowGroup(id: "statistics") {
            StatisticView()
        }.defaultSize(width: 300, height: 200, depth: 50)
            .windowStyle(.plain)
    }
}
