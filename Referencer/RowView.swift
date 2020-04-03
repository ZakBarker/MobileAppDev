//
//  RowView.swift
//  Referencer
//
//  Created by Zak Barker on 3/4/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @ObservedObject var wave: Wave
    var body: some View {
        HStack{
            Image(wave.image).resizable().frame(width: 70, height: 50)
            VStack(alignment: .leading){
                Text(wave.name).bold()
                Text(wave.country)
                    .font(.footnote)
            }
        }
    }
}
