//
//  DetailView.swift
//  Referencer
//
//  Created by Zak Barker on 17/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var wave: Wave
    var body: some View {
                ZStack{
                    Color(hue: 0.584, saturation: 0.889, brightness: 0.504).edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading) {
                        Image(wave.image).resizable().aspectRatio(contentMode: .fit).frame(width: 370.0).border(Color(hue: 0.584, saturation: 0.889, brightness: 0.504), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text(wave.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(wave.country + "\n")
                            .font(.title)
                            .fontWeight(.semibold)
                        HStack {
                            Text("Type: ")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
                            Text(wave.type)
                                .multilineTextAlignment(.leading)
        
                        }
                        HStack {
                            Text("Left:   ")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
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

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(wave: Wave)
//    }
//}
