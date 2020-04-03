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
    /// Placeholder for Notes
    @Published var notesPlaceholder: String
    /// Description for Type of Wave
    @Published var type: String
    /// Description for Left
    @Published var left: String
    /// Description for Right
    @Published var right: String
    /// Name of Wave Placeholder
    @Published var namePlaceholder: String
    /// Country of Wave Placeholder
    @Published var countryPlaceholder: String
    /// Type of Wave Placeholder
    @Published var typePlaceholder: String
    /// Characteristics of left hand Wave Placeholder
    @Published var leftPlaceholder: String
    /// Characteristics of right hand Wave Placeholder
    @Published var rightPlaceholder: String
    /// Image of Wave Placeholder
    @Published var imagePlaceholder: String

    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - notes: Description for Notes
    ///     - type: Description for Type of Wave
    ///     - left: Description for Left
    ///     - right: Description for Right
    
    
    init(notes: String = "Notes:", type: String = "Type: ", left: String = "Left:   ", right: String = "Right:", notesPlaceholder: String = "Add Some Notes Here",namePlaceholder: String = "Insert Name", countryPlaceholder: String = "Insert Country", typePlaceholder: String = "Insert Type Characteristic", leftPlaceholder: String = "Insert Left Characteristic", rightPlaceholder: String = "Insert Image URL", imagePlaceholder: String = "Insert Image URL"){
        self.notes = notes
        self.notesPlaceholder = notesPlaceholder
        self.type = type
        self.left = left
        self.right = right
        self.namePlaceholder = namePlaceholder
        self.countryPlaceholder = countryPlaceholder
        self.typePlaceholder = typePlaceholder
        self.leftPlaceholder = leftPlaceholder
        self.rightPlaceholder = rightPlaceholder
        self.imagePlaceholder = imagePlaceholder
    }
}
