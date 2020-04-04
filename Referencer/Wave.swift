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
    /// Static Image of Wave which occurs before user edits wave
    @Published var staticImage: String
    /// Stores Url for display of dynamic images if the user provides one
    @Published var dynamicImage: String
    /// Notes for wave
    @Published var notes: String
    /// Stores image url passed in by user.
    @Published var imageURL: String { didSet {
        /// Calls method to test if Url input is valid
        self.imageFromUrl(self.imageURL)
        }
    }
    /// Stores a list of urls which correspond to Images that have already been downloaded
    @Published var imageCache: Dictionary<URL, Image> = [:]
    
    /// Used to initialize an instance of type Wave
    /// - Parameters:
    ///     - name: Name of Wave
    ///     - country: Country of Wave
    ///     - type: Type of Wave
    ///     - left: Characteristics of left hand Wave
    ///     - right: Characteristics of right hand Wave
    ///     - staticImage: Static Image of Wave which occurs before user edits wave
    ///     - dynamicImage: Stores Url for display of dynamic images if the user provides one
    ///     - notes: Notes for wave
    ///     - imageURL: Stores image url passed in by user.
    ///     - imageCache: Stores a list of urls which correspond to Images that have already been downloaded
    
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
    
    /// Function recieves a string and attempts to convert this to a URL. Function then checks to make sure URL is an image and downloads that image. Image and URL are then stored in imageCache
    func imageFromUrl(_ imageUrl: String){
        // Convert String to URL
        guard let url = URL(string: imageUrl)
            else{
                return
        }
        // Use url to retrieve image data
        guard let imageData = try? Data(contentsOf: url)
            else {
                return
        }
        // Convert image data into image
        guard let uiImage = UIImage(data: imageData) else {
            return
        }
        // If successful, Store image in imageCache and set dynamicImage to fit the url string
        let img = Image(uiImage: uiImage)
        imageCache[url] = img
        self.dynamicImage = imageURL
    }
    
    /// Function provides image for display in the detail view
    func displayImageDetail() -> Image{
        // If url provided can not be converted to URL, display placeholder image.
        guard let url = URL(string: self.imageURL)
            else{
                return Image(self.staticImage)
        }
        // If image URL exists within imageCache, display image - else display placeholder image
        if let img = self.imageCache[url] {
            return img
        }
        else{
            return Image(self.staticImage)
        }
    }
    
    /// Function provides image for display in Row View
    func displayImageRow() -> Image{
        // If dynamicImage string can not be converted to URL, display placeholder image.
        guard let url = URL(string: self.dynamicImage)
            else{
                return Image(self.staticImage)
        }
        // If dynamicImage exists in the imageCache, display image - else display placeholder image.
        if let img = self.imageCache[url] {
            return img
        }
        else{
            return Image(self.staticImage)
        }
    }
}
