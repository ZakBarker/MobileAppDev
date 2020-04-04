//
//  RowView.swift
//  Referencer
//
//  Created by Zak Barker on 3/4/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

// Row View stores all UI instructions for each individual row. Each row corresponds to a single wave which is recieved from the Master View

struct RowView: View {
    // Stores information for specific waves for display
    @ObservedObject var wave: Wave
    var body: some View {
        HStack{
            // Called function which dynamically changes the display image based on input from Detail View.
            wave.displayImageRow().resizable().frame(width: 70, height: 50)
            VStack(alignment: .leading){
                Text(wave.name).bold()
                Text(wave.country)
                    .font(.footnote)
            }
        }
    }
}
