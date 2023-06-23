//
//  HomeViewModel.swift
//  rudo vision
//
//  Created by Fernando Salom Carratala on 23/6/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var footballers: [Footballer] = []

    init() {
        footballers = [Footballer(name: "example", image: "user"),
                        Footballer(name: "example", image: "user"),
                        Footballer(name: "example", image: "user"),
                        Footballer(name: "example", image: "user"),
                        Footballer(name: "example", image: "user"),
                        Footballer(name: "example", image: "user")]
    }
}
