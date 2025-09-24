//
//  MainView.swift
//  BinocularMinds
//
//  Created by Julio Enrique Sanchez Guajardo on 23/09/25.
//
import SwiftUI
import RealityKit
import RealityKitContent

struct MainView : View {
    
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        Button("Start the App") {
            openWindow(id: "3D Model")
            openWindow(id: "Controls")
        }
        .padding()
    }
}

