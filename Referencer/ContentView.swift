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
        VStack(alignment: .leading){
            Image("Teahupo'o")
            Text(wave.country)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wave: Wave(name: "Teahupo'o", country: "Tahiti", type: "Reef Break", left: "Ripping", right: "Death"))
    }
}
