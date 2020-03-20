//
//  Wave.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

// Class Stores all information relating to particular waves around the world. This data will be passed to the DetailView for display.

class Wave {
    // Name of Wave
    var name: String
    // Country of Wave
    var country: String
    // Type of Wave
    var type: String
    // Characteristics of left hand Wave
    var left: String
    // Characteristics of right hand Wave
    var right: String
    // Image of Wave
    var image: String
    
    // Used to initialize an instance of type Wave
    init(name: String, country: String, type: String, left: String, right: String, image: String){
        self.name = name
        self.country = country
        self.type = type
        self.left = left
        self.right = right
        self.image = image
    }
    
    
}
