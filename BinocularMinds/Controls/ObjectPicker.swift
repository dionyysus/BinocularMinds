//
//  ObjectPicker.swift
//  BinocularMinds
//
//  Created by Can Dindar on 23/09/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ObjectPicker: View {
    @Binding var selectedModel: String
    let models: [String]
    @Bindable var parameters: ModelParameters

    
    var body: some View {
        TabView(selection: $selectedModel) {
            ForEach(models, id: \.self) { model in
                VStack(spacing: 50) {
                    Model3D(named: model, bundle: realityKitContentBundle)
                        .padding(.bottom, 50)
                        .scaleEffect(0.5)
                    Text(model)
                        .font(.headline)
                        .padding(.top, 50)
                }
                .tag(model)
            }
        }
        .tabViewStyle(.page)
    }
}
