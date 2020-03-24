//
//  Wave.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

// Class Stores all information relating to particular waves around the world. This data will be passed to the DetailView for display.
import Foundation

class Wave: ObservableObject, Identifiable {
    /// Name of Wave
    var name: String
    /// Country of Wave
    var country: String
    /// Type of Wave
    var type: String
    /// Characteristics of left hand Wave
    var left: String
    /// Characteristics of right hand Wave
    var right: String
    /// Image of Wave
    var image: String
    /// Notes for wave
    var notes: String
    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - name: Name of Wave
    ///     - country: Country of Wave
    ///     - type: Type of Wave
    ///     - left: Characteristics of left hand Wave
    ///     - right: Characteristics of right hand Wave
    ///     - image: Image of Wave
    ///     - notes: Notes for wave
    
    init(name: String, country: String, type: String, left: String, right: String, image: String, notes: String = ""){
        self.name = name
        self.country = country
        self.type = type
        self.left = left
        self.right = right
        self.image = image
        self.notes = notes
    }
}
