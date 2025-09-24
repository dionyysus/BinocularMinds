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
    let models = ["Can", "Faz", "Gizem", "July", "Nat", "Panchito", "Scene", "Teapot", "Ship", "Pancakes"]
    
    @State private var selectedModel: String = "Can"
        
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 20) {
                ObjectPicker(selectedModel: $selectedModel, models: models, parameters: parameters)
                Spacer()
                SizeSlider(size: $parameters.scaleValue)
                
                Rotations(parameters: parameters)
            }
            
            Button("Add Object") {
                openWindow(id: "3D \(selectedModel)")
            }
            .padding()

        }
    }
}

#Preview {
    ControlsView(parameters: ModelParameters())
}
