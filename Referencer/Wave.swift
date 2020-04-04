//
//  Wave.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

// Class Stores all information relating to particular waves around the world. This data will be passed to the DetailView for display.
import Foundation
import UIKit
import SwiftUI

class Wave: ObservableObject, Identifiable {
    /// Name of Wave
    @Published var name: String
    /// Country of Wave
    @Published var country: String
    /// Type of Wave
    @Published var type: String
    /// Characteristics of left hand Wave
    @Published var left: String
    /// Characteristics of right hand Wave
    @Published var right: String
    /// Image of Wave
    @Published var staticImage: String
    @Published var dynamicImage: String
    /// Notes for wave
    @Published var notes: String
    
    @Published var imageURL: String { didSet {
        self.imageFromUrl(self.imageURL)
        }
    }
    @Published var imageCache: Dictionary<URL, Image> = [:]
    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - name: Name of Wave
    ///     - country: Country of Wave
    ///     - type: Type of Wave
    ///     - left: Characteristics of left hand Wave
    ///     - right: Characteristics of right hand Wave
    ///     - image: Image of Wave
    ///     - notes: Notes for wave
    
    init(name: String, country: String, type: String, left: String, right: String, staticImage: String, dynamicImage: String = "", notes: String = "", imageURL: String = ""){
        self.name = name
        self.country = country
        self.type = type
        self.left = left
        self.right = right
        self.staticImage = staticImage
        self.dynamicImage = dynamicImage
        self.notes = notes
        self.imageURL = imageURL
    }
    
    func imageFromUrl(_ imageUrl: String){
        guard let url = URL(string: imageUrl)
            else{
                return
        }
        guard let imageData = try? Data(contentsOf: url)
            else {
                return
        }
        guard let uiImage = UIImage(data: imageData) else {
            return
        }
        let img = Image(uiImage: uiImage)
        imageCache[url] = img
        self.dynamicImage = imageURL
    }
    
    func displayImageDetail() -> Image{
        
        guard let url = URL(string: self.imageURL)
            else{
                return Image(self.staticImage)
        }
        if let img = self.imageCache[url] {
            return img
        }
        else{
            return Image(self.staticImage)
        }
    }
    
    func displayImageRow() -> Image{
        guard let url = URL(string: self.dynamicImage)
            else{
                return Image(self.staticImage)
        }
        if let img = self.imageCache[url] {
            return img
        }
        else{
            return Image(self.staticImage)
        }
    }
}
