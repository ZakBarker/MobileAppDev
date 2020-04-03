//
//  ViewModel.swift
//  Referencer
//
//  Created by Zak Barker on 3/4/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

/// Class contains an array which stores data objects of the type Wave. This will be used to provide details to each view.
class ViewModel: ObservableObject, Identifiable{
    /// Stores data objects of type Wave
    @Published var waves: [Wave] = []
    @Published var detailViewModel: [DetailViewModel] = []
    
    /// Function appends new wave to waves array
    /// - Parameters:
    ///     - wave: Instance of type Wave
    func addWave(){
        self.waves.append(Wave(name: "New", country: "Wave", type: "", left: "", right: "", image: "snapper"))
    }
    
    func removeWave(_ indices: IndexSet){
        indices.forEach { waves.remove(at: $0) }
    }
    
}
