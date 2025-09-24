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
    
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 20) {
                ObjectPicker(selectedModel: $parameters.selectedModel, models: models, parameters: parameters)
                Spacer()
                SizeSlider(size: $parameters.scaleValue)
                
                Rotations(parameters: parameters)
                
//                ADD TILTING
            }
            
            Button("Add Object") {
                openWindow(id: "3D Model")
            }
            .padding()
        }
    }
}

#Preview {
    ControlsView(parameters: ModelParameters())
}
