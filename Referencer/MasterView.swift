//
//  MasterView.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

// MasterView receives View Model data structure from Content View. Masterview displays a list of NavigationLinks which correspond to each index within the waveList array. It then displays GUI and passes data for each indexed Wave instance to the DetailView.

struct MasterView: View {
    // View Model stores all information to be displayed in the View
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        List{
            ForEach(viewModel.waves) { wave in
                NavigationLink(destination: DetailView(wave: wave, dvm: self.viewModel.detailViewModel[0])) {
                    // Row View Stores functionality and UI instructions for each individual row
                    RowView(wave: wave)
                }
                // On deletion of Instance, call function which removes Instance of wave from Wave array in View Model
            }.onDelete { indices in
                self.viewModel.removeWave(indices)
            }
        }
    }
}
