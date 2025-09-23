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
            SizeSlider(size: $parameters.scaleValue)
        }
    }
}

#Preview {
    ControlsView(parameters: ModelParameters())
}
