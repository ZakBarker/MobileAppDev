//
//  WaveList.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

// Class contains an array which stores data objects of the type Wave. This will be used to provide details to each view.
class WaveList{
    var waves: [Wave] = []
    
    // Function appends new wave to waves array
    func addWave(wave: Wave){
        self.waves.append(wave)
    }
}
