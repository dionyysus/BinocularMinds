//
//  ControlsView.swift
//  BinocularMinds
//
//  Created by Julio Enrique Sanchez Guajardo on 23/09/25.
//

import SwiftUI

struct ControlsView: View {
    @Environment(\.openWindow) var openWindow
    
    @Bindable var parameters: ModelParameters
    let models = ["Can", "Faz", "Gizem", "July", "Nat", "Panchito", "Scene"]
    
    @State var selectedModel: String = "Can"
    
    var body: some View {
        VStack {
            HStack {
                ObjectPicker(selectedModel: $selectedModel, models: models)
                Button("Create object") {
                    parameters.openModels.append(selectedModel)
                }
            }
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
