//
//  ResizableCubeApp.swift
//  ResizableCube
//
//  Created by Thilo on 26.07.2023.
//

import SwiftUI

@main
struct ResizableCubeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
