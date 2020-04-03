//
//  MasterView.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

// MasterView receives waveList data structure from Content View. Masterview displays a list of NavigationLinks which corresponds to each index within the waveList array. It then displays GUI and passes data for each indexed Wave instance to the DetailView.

struct MasterView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        List{
            ForEach(viewModel.waves) { wave in
                NavigationLink(destination: DetailView(wave: wave, dvm: self.viewModel.detailViewModel[0])) {
                    HStack{
                        Image(wave.image).resizable().frame(width: 70, height: 50)
                        VStack(alignment: .leading){
                            Text(wave.name).bold()
                            Text(wave.country)
                                .font(.footnote)
                        }
                    }
                }
            }.onDelete { indices in
                self.viewModel.removeWave(indices)
            }
        }
    }
}
