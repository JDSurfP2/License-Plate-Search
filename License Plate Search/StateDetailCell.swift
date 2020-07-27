//
//  StateDetailCell.swift
//  License Plate Search
//
//  Created by Jared Detro on 7/14/20.
//  Copyright © 2020 Jared Detro. All rights reserved.
//

import SwiftUI

struct StateDetailCell: View {
    @ObservedObject var plate: Plate
    
    var plateColor: Color {
        if plate.plateCounter == 0 {
            return Color.red
        } else if plate.plateCounter == 1 {
            return Color.yellow
        } else if plate.plateCounter >= 2 && plate.plateCounter < 10 {
            return Color.green
        } else {
            return Color.black
        }
    }
    
    var body: some View {
        HStack {
            Image(plate.imageName).resizable()
                .frame(width: 120, height: 65)
            Text(plate.plateName)
            Spacer()
            Button(action: {
                self.plate.plateCounter += 1
                StateProvider.singleton.saveState()
            }) {
                Text("\(self.plate.plateCounter)")
                    .padding()
                    .background(self.plateColor)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .border(self.plateColor, width: 5)
                
            }
        }    }
}

struct StateDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailCell(plate: State.alabama.plates.first!)
    }
}
