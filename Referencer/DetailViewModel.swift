//
//  DetailViewModel.swift
//  Referencer
//
//  Created by Zak Barker on 3/4/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

/// Class contains embedded information to be displayed within the view.
class DetailViewModel: ObservableObject, Identifiable{
    /// Description for Notes
    @Published var notes: String
    /// Description for Type of Wave
    @Published var type: String
    /// Description for Left
    @Published var left: String
    /// Description for Right
    @Published var right: String

    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - notes: Description for Notes
    ///     - type: Description for Type of Wave
    ///     - left: Description for Left
    ///     - right: Description for Right
    
    init(notes: String = "", type: String = "Type: ", left: String = "Left:   ", right: String = "Right:", image: String){
        self.notes = notes
        self.type = type
        self.left = left
        self.right = right
    }
}
