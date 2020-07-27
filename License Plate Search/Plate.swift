//
//  Plate.swift
//  License Plate Search
//
//  Created by Jared Detro on 6/30/20.
//  Copyright © 2020 Jared Detro. All rights reserved.
//

import Foundation

class Plate: Identifiable, ObservableObject, Codable {
    var plateName: String
    var imageName: String { return plateName }
    var imageCounter: Int = 0
    @Published var plateCounter: Int = 0
    
    init(plateName: String, imageCounter: Int) {
        self.plateName = plateName
        self.imageCounter = imageCounter
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        plateName = try values.decode(String.self, forKey: .plateName)
        imageCounter = try values.decode(Int.self, forKey: .imageCounter)
        plateCounter = try values.decode(Int.self, forKey: .plateCounter)
    }
    
    enum CodingKeys: String, CodingKey {
        case plateName
        case imageName
        case imageCounter
        case plateCounter
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(plateName, forKey: .plateName)
        try container.encode(imageCounter, forKey: .imageCounter)
        try container.encode(plateCounter, forKey: .plateCounter)
    }
    
    class PlateCounter: ObservableObject {
        @Published var plateCounter = 0
        
        func iterateCount() {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.plateCounter += 1
            }
        }
    }
}
