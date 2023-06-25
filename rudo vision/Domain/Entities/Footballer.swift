//
//  Footballer.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import Foundation

struct Footballer: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var position: String
    var age: String
    var number: String
    var image: String
    var country: String
    var stats: Stats

    init(name: String, image: String) {
        self.name = name
        self.position = "Centrocampista"
        self.age = "25"
        self.number = "10"
        self.image = image
        self.country = "🇩🇪"
        self.stats = Stats(goals: 10, matches: 30, assits: 5, minutes: 1300)
    }
}

struct Stats {
    var goals: Int
    var matches: Int
    var assits: Int
    var minutes: Int

    init(goals: Int, matches: Int, assits: Int, minutes: Int) {
        self.goals = goals
        self.matches = matches
        self.assits = assits
        self.minutes = minutes
    }
}
