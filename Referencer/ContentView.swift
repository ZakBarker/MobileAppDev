//
//  ContentView.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var waveList: WaveList
    var body: some View {
        NavigationView{
            MasterView(waveList: waveList).navigationBarTitle("World Breaks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(waveList: WaveList())
            
    }
}
