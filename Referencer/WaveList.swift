//
//  WaveList.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

/// Class contains an array which stores data objects of the type Wave. This will be used to provide details to each view.
class WaveList: ObservableObject, Identifiable{
    /// Stores data objects of type Wave
    var waves: [Wave] = []
    
    /// Function appends new wave to waves array
    /// - Parameters:
    ///     - wave: Instance of type Wave
    func addWave(wave: Wave){
        self.waves.append(wave)
    }
}
