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
            SizeSlider(size: $parameters.scaleValue)
        }
    }
}

#Preview {
    ControlsView(parameters: ModelParameters())
}
