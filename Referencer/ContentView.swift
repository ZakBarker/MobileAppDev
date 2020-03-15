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
        ZStack{
            Color(hue: 0.584, saturation: 0.889, brightness: 0.504).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Image("teahupoo").resizable().aspectRatio(contentMode: .fit).frame(width: 370.0).border(Color(hue: 0.584, saturation: 0.889, brightness: 0.504), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Text(wave.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(wave.country)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(wave.type)
                HStack {
                    Text("Left:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text(wave.left)
                        .multilineTextAlignment(.leading)

                }
                HStack {
                    Text("Right:")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.trailing)
                    Text(wave.right)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.all, 50.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wave: Wave(name: "Teahupo'o", country: "Tahiti", type: "Reef Break", left: "Ripping", right: "Death"))
            
    }
}
