//
//  State.swift
//  License Plate Search
//
//  Created by Jared Detro on 6/25/20.
//  Copyright © 2020 Jared Detro. All rights reserved.
//

import Foundation

class State: Identifiable, Codable {
    var name: String
    var plates: [Plate]
    
    init(name: String, plates: [Plate]) {
        self.name = name
        self.plates = plates
    }
    
    var imageName: String { return name }
    var thumbnailName: String { return name }
}

let testData = [
    State.alabama,
    State.alaska,
    State.arizona,
    State.arkansas,
    State.california,
    State.colorado,
    State(name: "Connecticut", plates: []),
    State(name: "Delaware", plates: []),
    State(name: "Florida", plates: []),
    State(name: "Georgia", plates: []),
    State(name: "Hawaii", plates: []),
    State(name: "Idaho", plates: []),
    State(name: "Illinois", plates: []),
    State(name: "Indiana", plates: []),
    State(name: "Iowa", plates: []),
    State(name: "Kansas", plates: []),
    State(name: "Kentucky", plates: []),
    State(name: "Louisiana", plates: []),
    State(name: "Maine", plates: []),
    State(name: "Maryland", plates: []),
    State(name: "Massachusetts", plates: []),
    State(name: "Michigan", plates: []),
    State(name: "Minnesota", plates: []),
    State(name: "Mississippi", plates: []),
    State(name: "Missouri", plates: []),
    State(name: "Montana", plates: []),
    State(name: "Nebraska", plates: []),
    State(name: "Nevada", plates: []),
    State(name: "New Hampshire", plates: []),
    State(name: "New Jersey", plates: []),
    State(name: "New Mexico", plates: []),
    State(name: "New York", plates: []),
    State(name: "North Carolina", plates: []),
    State(name: "North Dakota", plates: []),
    State(name: "Ohio", plates: []),
    State(name: "Oklahoma", plates: []),
    State(name: "Oregon", plates: []),
    State(name: "Pennsylvania", plates: []),
    State(name: "Rhode Island", plates: []),
    State(name: "South Carolina", plates: []),
    State(name: "South Dakota", plates: []),
    State(name: "Tennessee", plates: []),
    State(name: "Texas", plates: []),
    State(name: "Utah", plates: []),
    State(name: "Vermont", plates: []),
    State(name: "Virginia", plates: []),
    State(name: "Washington", plates: []),
    State(name: "West Virginia", plates: []),
    State(name: "Wisconsin", plates: []),
    State(name: "Wyoming", plates: []),
]
