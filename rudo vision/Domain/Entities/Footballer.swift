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
}

struct Stats {
    var goals: Int
    var matches: Int
    var assits: Int
    var minutes: Int
    
}
