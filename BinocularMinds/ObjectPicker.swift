//
//  ObjectPicker.swift
//  BinocularMinds
//
//  Created by Can Dindar on 23/09/25.
//

import SwiftUI

struct ObjectPicker: View {
    @Binding var selectedModel: String   // binding to parent
    let models: [String]
    
    var body: some View {
        Picker("Select Model", selection: $selectedModel) {
                       ForEach(models, id: \.self) { model in
                           Text(model).tag(model)
                       }
                   }
        .pickerStyle(.menu)
    }
}
