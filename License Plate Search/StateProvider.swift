//
//  StateProvider.swift
//  License Plate Search
//
//  Created by Jared Detro on 7/17/20.
//  Copyright © 2020 Jared Detro. All rights reserved.
//

import Foundation
import SwiftUI

class StateProvider: ObservableObject {
    static var singleton = StateProvider()
    @Published var states = StateProvider.getStates()
    
    func saveState() {
        let encoder = PropertyListEncoder()
        let codedStates = try? encoder.encode(states)
        try? codedStates?.write(to: StateProvider.archiveURL)
    }
    
    private static func getStates() -> [State] {
        let readData = (try? Data(contentsOf: StateProvider.archiveURL))
        let decoder = PropertyListDecoder()
        
        guard let data = readData, let states = try? decoder.decode(Array<State>.self, from: data) else {
            return testData
        }
        return states
    }
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let archiveURL = documentsDirectory.appendingPathComponent("plates").appendingPathExtension("plist")
}
