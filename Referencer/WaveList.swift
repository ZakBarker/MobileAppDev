//
//  WaveList.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

class WaveList{
    var waves: [Wave] = []
    
    func addWave(wave: Wave){
        self.waves.append(wave)
    }
}
