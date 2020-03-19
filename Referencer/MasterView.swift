//
//  MasterView.swift
//  Referencer
//
//  Created by Zak Barker on 15/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    var waveList: WaveList
    var body: some View {
        List{
            ForEach(0..<waveList.waves.count) { i in
                NavigationLink(destination: DetailView(wave: self.waveList.waves[i])) {
                    HStack{
                        Image("\(self.waveList.waves[i].image)").resizable().frame(width: 70, height: 50)
                        VStack{
                            Text("\(self.waveList.waves[i].name)").bold().multilineTextAlignment(.trailing)
                            Text("\(self.waveList.waves[i].country)")

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
