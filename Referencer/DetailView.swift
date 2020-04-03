//
//  DetailView.swift
//  Referencer
//
//  Created by Zak Barker on 17/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

// DetailView Receives instance of Class Wave. This instance stores all of the data for a specific wave and displays this data as GUI implementation specifiec.

struct DetailView: View {
    // @ObservableObject variable created for the purpose of Binding with TextField
    @ObservedObject var wave: Wave
    var dvm: DetailViewModel
    var body: some View {
                ZStack{
                    Color(hue: 0.584, saturation: 0.889, brightness: 0.504).edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading) {
                        Text(dvm.notes).font(.largeTitle)
                            .fontWeight(.bold).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -60)
                        TextField(dvm.notesPlaceholder, text: $wave.notes).offset(y: -70).textFieldStyle(RoundedBorderTextFieldStyle())
                        Image(wave.image).resizable().aspectRatio(contentMode: .fit).frame(width: 370.0).border(Color(hue: 0.584, saturation: 0.889, brightness: 0.504), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/).offset(y: -70)
                        TextField(dvm.namePlaceholder, text: $wave.name)
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -70)
                        TextField(dvm.countryPlaceholder + "\n", text: $wave.country)
                            .font(.title)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -70)
                        HStack {
                            Text("Type: ")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
                            Text(wave.type)
                                .multilineTextAlignment(.leading).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
                        }
                        HStack {
                            Text("Left:   ")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
                            Text(wave.left)
                                .multilineTextAlignment(.leading).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
        
                        }
                        HStack {
                            Text("Right:")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
                            Text(wave.right)
                                .multilineTextAlignment(.leading).foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.9)).offset(y: -80)
                        }
                    }
                    .padding(.all, 50.0)
                }
    }
}
