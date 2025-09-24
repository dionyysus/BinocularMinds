//
//  BinocularMindsApp.swift
//  BinocularMinds
//
//  Created by Gizem Coskun on 22/09/25.
//

import SwiftUI

@main
struct BinocularMindsApp: App {
    @State private var parameters = ModelParameters()
    
    var body: some Scene {
        WindowGroup("Controls", id: "Controls") {
            ControlsView(parameters: parameters)
        }
        .defaultSize(CGSize(width: 400, height: 600))
        
        WindowGroup("3D Can", id: "3D Can") {
            ContentView(parameters: parameters, modelName: "Can")
        }
        .windowStyle(.volumetric)
        
        WindowGroup("3D Faz", id: "3D Faz") {
            ContentView(parameters: parameters, modelName: "Faz")
        }
        .windowStyle(.volumetric)
        
        WindowGroup("3D Gizem", id: "3D Gizem") {
            ContentView(parameters: parameters, modelName: "Gizem")
        }
        .windowStyle(.volumetric)
        
        WindowGroup("3D July", id: "3D July") {
            ContentView(parameters: parameters, modelName: "July")
        }
        .windowStyle(.volumetric)
        
        WindowGroup("3D Panchito", id: "3D Panchito") {
            ContentView(parameters: parameters, modelName: "Panchito")
        }
        .windowStyle(.volumetric)
        
        WindowGroup("3D Nat", id: "3D Nat") {
            ContentView(parameters: parameters, modelName: "Nat")
        }
        .windowStyle(.volumetric)

        WindowGroup("3D Scene", id: "3D Scene") {
            ContentView(parameters: parameters, modelName: "Scene")
        }
        .windowStyle(.volumetric)
    }
}
