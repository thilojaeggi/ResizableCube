//
//  ContentView.swift
//  ResizableCube
//
//  Created by Thilo on 26.07.2023.
//

import SwiftUI
import RealityKit

struct ContentView: View {

    @State private var showImmersiveSpace = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {
        NavigationSplitView {
            List {
                Text("Item")
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {

                Text("Hello, world!")

                Toggle("Show ImmersiveSpace", isOn: $showImmersiveSpace)
                    .toggleStyle(.button)
                    .padding(.top, 50)
                Button("Add Cube") {
                    viewModel.addCube()
                }
                Slider(value: $viewModel.cubeScale) {
                    Text("Scale")
                }
            }
            .navigationTitle("Content")
            .padding()
        }
        .onChange(of: showImmersiveSpace) { _, newValue in
            Task {
                if newValue {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                } else {
                    await dismissImmersiveSpace()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
