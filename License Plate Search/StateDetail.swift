//
//  StateDetail.swift
//  License Plate Search
//
//  Created by Jared Detro on 6/25/20.
//  Copyright © 2020 Jared Detro. All rights reserved.
//

import SwiftUI

struct StateDetail: View {
    var state: State
    var plates: [Plate]
        
    var body: some View {
        List(plates) { plate in
            StateDetailCell(plate: plate)
                .navigationBarTitle(self.state.name)
        }
    }
}

struct StateDetail_Previews: PreviewProvider {
    static var previews: some View {
        StateDetail(state: testData[0], plates: testData[0].plates)
    }
}
