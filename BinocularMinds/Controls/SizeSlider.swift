//
//  SizeSlider.swift
//  BinocularMinds
//
//  Created by Can Dindar on 23/09/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SizeSlider: View {
    @Binding var size: CGFloat
    
    var body: some View {
        HStack {
            Slider( value: $size, in: 0.5...1.5) {
            }
            Text("\(size, specifier: "%.2f")")
        }
        .frame(width: 250)
    }
}
