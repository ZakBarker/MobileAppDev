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
    
    /// Function appends new wave to waves array
    /// - Parameters:
    ///     - wave: Instance of type Wave
    func addWave(){
        self.waves.append(Wave(name: "New", country: "", type: "", left: "", right: "", image: ""))
    }
    
    func removeWave(_ indices: IndexSet){
        
    }
}
