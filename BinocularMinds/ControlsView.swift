//
//  ControlsView.swift
//  BinocularMinds
//
//  Created by Julio Enrique Sanchez Guajardo on 23/09/25.
//

import SwiftUI

struct ControlsView: View {
    
    @Bindable var parameters: ModelParameters
    let models = ["Can", "Faz", "Gizem", "July", "Nat", "Panchito", "Scene"]
    
    var body: some View {
        VStack {
            ObjectPicker(selectedModel: $parameters.selectedModel, models: models)
            Text("Scale")
                .font(.title)
            SizeSlider(size: $parameters.scaleValue)
            Text("Rotation")
                .font(.title)
            Text("X axis")
                .font(.caption)
            Slider(value: $parameters.angleDegreeX, in: -1...1, label: { Text("Rotate X") })
            Text("Y axis")
                .font(.caption)
            Slider(value: $parameters.angleDegreeY, in: -1...1, label: { Text("Rotate Y") })
            Text("Z axis")
                .font(.caption)
            Slider(value: $parameters.angleDegreeZ, in: -1...1, label: { Text("Rotate Z") })
        }
    }
}

#Preview {
    ControlsView(parameters: ModelParameters())
}
