//
//  Rotations.swift
//  BinocularMinds
//
//  Created by Can Dindar on 24/09/25.
//

import SwiftUI

struct Rotations: View {
    @Bindable var parameters: ModelParameters
    
    var body: some View {
        VStack {
            
            HStack {
                Slider(value: $parameters.angleDegreeX, in: -1...1, label: { Text("Rotate X") })
                Text("X")
                    .font(.caption)
            }
            
            HStack {
                Slider(value: $parameters.angleDegreeY, in: -1...1, label: { Text("Rotate Y") })
                Text("Y")
                    .font(.caption)
            }
            
            HStack {
                Slider(value: $parameters.angleDegreeZ, in: -1...1, label: { Text("Rotate Z") })
                Text("Z")
                    .font(.caption)
            }
        }
        .frame(width: 250)
    }
}
