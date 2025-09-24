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
        WindowGroup("Main") {
            MainView()
        }
        .defaultSize(CGSize(width: 400, height: 600))
        
        WindowGroup("3D Model", id: "3D Model") {
            ForEach(parameters.openModels, id: \.self) { model in
                ContentView(parameters: parameters, modelName: model)
            }
        }
        .windowStyle(.volumetric)
        
        WindowGroup("Controls", id: "Controls") {
            ControlsView(parameters: parameters)
        }
        .defaultSize(CGSize(width: 400, height: 600))

        


    }
}
