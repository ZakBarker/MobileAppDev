//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import XCTest
import Foundation
import SwiftUI
@testable import Referencer

class ReferencerTests: XCTestCase {
    // Create instance of type Wave for testing purposes
    @ObservedObject var wave = Wave(name: "South Straddie", country: "Australia", type: "Beach Break", left: "Average", right: "Sick Barrels", staticImage: "teahupoo")
    
    //Create instance of type WaveList for testing purposes
    @ObservedObject var viewModel = ViewModel()
    
    override func setUp() {
        // Append instance of type Wave to WaveList array for testing purposes
        self.viewModel.waves.append(wave)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // Test the functionality of Wave Class
    func testWave() {
        XCTAssertEqual(wave.name, "South Straddie")
        XCTAssertEqual(wave.country, "Australia")
        XCTAssertEqual(wave.type, "Beach Break")
        XCTAssertEqual(wave.left, "Average")
        XCTAssertEqual(wave.right, "Sick Barrels")
        XCTAssertEqual(wave.staticImage, "teahupoo")
        XCTAssertEqual(wave.dynamicImage, "")
        XCTAssertEqual(wave.notes, "")
        XCTAssertEqual(wave.imageURL, "")

    }

    // Test the functionality of instances within WaveList array of Waves.
    func testWaves(){
        XCTAssertEqual(viewModel.waves.count, 1)
        XCTAssertEqual(viewModel.waves[0].name, "South Straddie")
        XCTAssertEqual(viewModel.waves[0].country, "Australia")
        XCTAssertEqual(viewModel.waves[0].type, "Beach Break")
        XCTAssertEqual(viewModel.waves[0].left, "Average")
        XCTAssertEqual(viewModel.waves[0].right, "Sick Barrels")
        XCTAssertEqual(viewModel.waves[0].staticImage, "teahupoo")
        XCTAssertEqual(viewModel.waves[0].dynamicImage, "")
        XCTAssertEqual(viewModel.waves[0].notes, "")
        XCTAssertEqual(viewModel.waves[0].imageURL, "")
    }
    
    // Test AddWave() Method of Class View Model. Adds 3 new wave instances and verifies that they have been appended
    func testAddWave(){
        self.viewModel.waves.append(wave)
        self.viewModel.waves.append(wave)
        self.viewModel.waves.append(wave)
        XCTAssertEqual(viewModel.waves.count, 4)
    }
    
    // Tests integrity of data appended to View Model Waves Array by creating one new Wave Instance
    func testAppendedWave(){
        self.viewModel.addWave()
        XCTAssertEqual(viewModel.waves.count, 2)
        XCTAssertEqual(viewModel.waves[1].name, "New")
        XCTAssertEqual(viewModel.waves[1].country, "Wave")
        XCTAssertEqual(viewModel.waves[1].type, "")
        XCTAssertEqual(viewModel.waves[1].left, "")
        XCTAssertEqual(viewModel.waves[1].right, "")
        XCTAssertEqual(viewModel.waves[1].staticImage, "snapper")
        XCTAssertEqual(viewModel.waves[1].dynamicImage, "")
        XCTAssertEqual(viewModel.waves[1].notes, "")
        XCTAssertEqual(viewModel.waves[1].imageURL, "")
    }
    
    // Tests RemoveWave of Class View Model
    func testRemoveWave(){
        viewModel.waves.remove(at: 0)
        XCTAssertEqual(viewModel.waves.count, 0)
    }
    
    // Tests imageFromUrl Method of Class Wave - Should update dynamicImage / imageURL / imageCache attributes
    func testImageFromUrl(){
        self.wave.imageURL = "https://upload.wikimedia.org/wikipedia/commons/5/54/Mallard_drake_.02.jpg"
        self.wave.imageFromUrl(self.wave.imageURL)
        XCTAssertEqual(viewModel.waves[0].imageURL, "https://upload.wikimedia.org/wikipedia/commons/5/54/Mallard_drake_.02.jpg")
        XCTAssertEqual(viewModel.waves[0].dynamicImage, "https://upload.wikimedia.org/wikipedia/commons/5/54/Mallard_drake_.02.jpg")
        XCTAssertEqual(viewModel.waves[0].imageCache.count, 1)
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
