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
    
    /// - Parameters:
    ///     - waves: Stores data objects of type Wave
    ///     - detailViewModel: Stores data objects of type DetailViewModel
    
    /// Function appends new wave to waves array
    func addWave(){
        self.waves.append(Wave(name: "New", country: "Wave", type: "", left: "", right: "", staticImage: "snapper"))
    }
    
    /// Function removes wave from waves array
    func removeWave(_ indices: IndexSet){
        indices.forEach { waves.remove(at: $0) }
    }
    
}
