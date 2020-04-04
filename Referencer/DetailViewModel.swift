//
//  DetailViewModel.swift
//  Referencer
//
//  Created by Zak Barker on 3/4/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import Foundation

/// Class contains embedded information to be displayed within the view. This is useful in the case that information must be stored in several languages
class DetailViewModel: ObservableObject, Identifiable{
    /// Embedded information for notes field
    @Published var notes: String
    /// Embedded information for notes placeholder
    @Published var notesPlaceholder: String
    /// Embedded information for type field
    @Published var type: String
    /// Embedded information for left field
    @Published var left: String
    /// Embedded information for right field
    @Published var right: String
    /// Embedded information for name placeholder
    @Published var namePlaceholder: String
    /// Embedded information for country placeholder
    @Published var countryPlaceholder: String
    /// Embedded information for type placeholder
    @Published var typePlaceholder: String
    /// Embedded information for left placeholder
    @Published var leftPlaceholder: String
    /// Embedded information for right placeholder
    @Published var rightPlaceholder: String
    /// Embedded information for name image url placeholder
    @Published var imagePlaceholder: String

    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - notes: Embedded information for notes field
    ///     - notesPlaceholder: Embedded information for notes placeholder
    ///     - type: Embedded information for type field
    ///     - left: Embedded information for left field
    ///     - right: Embedded information for right field
    ///     - namePlaceholder: Embedded information for name placeholder
    ///     - countryPlaceholder: Embedded information for country placeholder
    ///     - typePlaceholder: Embedded information for type placeholder
    ///     - leftPlaceholder: Embedded information for left placeholder
    ///     - rightPlaceholder: Embedded information for right placeholder
    ///     - imagePlaceholder: Embedded information for name image url placeholder
    
    
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
