//
//  ResizableCubeApp.swift
//  ResizableCube
//
//  Created by Thilo on 26.07.2023.
//

import SwiftUI

@main
struct ResizableCubeApp: App {
    @StateObject private var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView().environmentObject(viewModel)
        }
    }
}
