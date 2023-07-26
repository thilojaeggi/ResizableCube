//
//  ViewModel.swift
//  ResizableCube
//
//  Created by Thilo on 26.07.2023.
//

import Foundation
import Observation
import RealityKit

class ViewModel: ObservableObject {
    
    @Published var rootEntity: Entity = Entity()
    
    var cube: ModelEntity? = nil
    
    @Published var cubeScale: Float = 1.0 {
        didSet {
            cube?.setScale(.init(repeating: Float(cubeScale)), relativeTo: nil)
        }
    }
    
    func addCube() {
        cube = ModelEntity(mesh: .generateBox(size: 1.0), materials: [SimpleMaterial(color: .red, isMetallic: true)])
        
        guard let cube else {
            return
        }
        rootEntity.addChild(cube)

        
        
    }
    
    
    
    
    
    
}

