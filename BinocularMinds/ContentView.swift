//
//  ContentView.swift
//  BinocularMinds
//
//  Created by Gizem Coskun on 22/09/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var size: CGFloat = 1.0
    let models = ["Can", "Faz", "Gizem", "July", "Nat", "Panchito", "Scene"]
    @State private var selectedModel = "Can" 

    var body: some View {
       
            Model3D(named: selectedModel, bundle: realityKitContentBundle)
                .padding(.bottom, 50)
                .scaleEffect(size)
                .gesture(
                    MagnifyGesture(minimumScaleDelta: 0)
                        .onChanged { value in
                            size = min(max(0.5, value.magnification), 3.0)
                        }
                        .targetedToAnyEntity() // it's for specifiying the 3d object in the scene
                )
        VStack {
            ObjectPicker(selectedModel: $selectedModel, models: models)
            SizeSlider(size: $size)
        }
    }
}
 
#Preview {
    ContentView()
}
