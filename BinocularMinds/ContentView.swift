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
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
                .scaleEffect(size)
                .gesture(
                    MagnifyGesture(minimumScaleDelta: 0)
                        .onChanged { value in
                            size = min(max(0.0, value.magnification), 3.0)
                        }
                        .targetedToAnyEntity() // it's for specifiying the 3d object in the scene
                )
            SizeSlider(size: $size)

        }
    }
}

#Preview {
    ContentView()
}
