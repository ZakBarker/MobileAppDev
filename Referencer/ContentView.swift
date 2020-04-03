//
//  ContentView.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

// ContentView receives waveList data structure from Scene Delegate.swift. It then creates a NavigationView which houses the MasterView and passes the waveList structure to the MasterView for processing.

struct ContentView: View {
    var viewModel: ViewModel
    var body: some View {
        NavigationView{
            MasterView(viewModel: viewModel).navigationBarTitle("World Breaks")
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(waveList: WaveList())
//
//    }
//}
