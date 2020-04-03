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
            ForEach(0..<viewModel.waves.count) { i in
                NavigationLink(destination: DetailView(wave: self.viewModel.waves[i])) {
                    HStack{
                        Image("\(self.viewModel.waves[i].image)").resizable().frame(width: 70, height: 50)
                        VStack(alignment: .leading){
                            Text("\(self.viewModel.waves[i].name)").bold()
                            Text("\(self.viewModel.waves[i].country)")
                                .font(.footnote)
                        }
                    }
                }
            }
        }
    }
}

//struct MasterView_Previews: PreviewProvider {
//    static var previews: some View {
//        MasterView(waveList: WaveList())
//    }
//}
