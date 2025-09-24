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
    @Bindable var parameters: ModelParameters

    var body: some View {
        Model3D(named: parameters.selectedModel, bundle: realityKitContentBundle)
                .padding(.bottom, 50)
                .scaleEffect(parameters.scaleValue)
                .gesture(
                    MagnifyGesture(minimumScaleDelta: 0)
                        .onChanged { value in
                            size = min(max(0.5, value.magnification), 3.0)
                        }
                        .targetedToAnyEntity() // it's for specifiying the 3d object in the scene
                )
                .rotation3DEffect(Angle(degrees: (Double(parameters.angleDegreeX)*300)), axis: (x: 1, y: 0, z: 1))
                .rotation3DEffect(Angle(degrees: (Double(parameters.angleDegreeY)*300)), axis: (x: 0, y: 1, z: 1))
                .rotation3DEffect(Angle(degrees: (Double(parameters.angleDegreeZ)*300)), axis: (x: 0, y: 0, z: 1))
        //ControlsView(parameters: parameters)
    }
}
 
#Preview {
    ContentView(parameters: ModelParameters())
}
