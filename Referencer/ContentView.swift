//
//  ContentView.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var wave: Wave
    var body: some View {
        VStack(alignment: .leading) {
            Image("teahupoo").border(Color.green, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Text(wave.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(wave.country)
                .font(.title)
                .fontWeight(.semibold)
            Text(wave.type)
            Text("Left: \(wave.left)")
            Text("Right: \(wave.right)")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wave: Wave(name: "Teahupo'o", country: "Tahiti", type: "Reef Break", left: "Ripping", right: "Death"))
    }
}
