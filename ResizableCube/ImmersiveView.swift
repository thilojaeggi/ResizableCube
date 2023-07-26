//
//  ImmersiveView.swift
//  ResizableCube
//
//  Created by Thilo on 26.07.2023.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    @EnvironmentObject private var viewModel: ViewModel
    var body: some View {
        RealityView { content in
            content.add(viewModel.rootEntity)
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
