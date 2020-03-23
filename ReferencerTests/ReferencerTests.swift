//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import XCTest
@testable import Referencer

class ReferencerTests: XCTestCase {
    // Create instance of type Wave for testing purposes
    var wave = Wave(name: "South Straddie", country: "Australia", type: "Beach Break", left: "Average", right: "Sick Barrels", image: "teahupoo")
    
    //Create instance of type WaveList for testing purposes
    var waveList = WaveList()
    
    override func setUp() {
        // Append instance of type Wave to WaveList array for testing purposes
        self.waveList.addWave(wave: wave)
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
        XCTAssertEqual(wave.image, "teahupoo")
        XCTAssertEqual(wave.notes, "")
    }

    // Test the functionality of instances within WaveList array of Waves.
    func testWaves(){
        XCTAssertEqual(waveList.waves.count, 1)
        XCTAssertEqual(waveList.waves[0].name, "South Straddie")
        XCTAssertEqual(waveList.waves[0].country, "Australia")
        XCTAssertEqual(waveList.waves[0].type, "Beach Break")
        XCTAssertEqual(waveList.waves[0].left, "Average")
        XCTAssertEqual(waveList.waves[0].right, "Sick Barrels")
        XCTAssertEqual(waveList.waves[0].image, "teahupoo")
    }
    
    // Test AddWave() Method of Class WaveList. Adds 3 new wave instances and verifies that they have been appended
    func testAddWave(){
        self.waveList.addWave(wave: wave)
        self.waveList.addWave(wave: wave)
        self.waveList.addWave(wave: wave)
        XCTAssertEqual(waveList.waves.count, 4)
    }
    
    // Tests integrity of data appended to WaveList Array by creating one new Wave Instance
    func testAppendedWave(){
        self.waveList.addWave(wave: Wave(name: "New Wave", country: "Test Country", type: "Test Type", left: "Test Left", right: "Test Right", image: "Test Image"))
        XCTAssertEqual(waveList.waves.count, 2)
        XCTAssertEqual(waveList.waves[1].name, "New Wave")
        XCTAssertEqual(waveList.waves[1].country, "Test Country")
        XCTAssertEqual(waveList.waves[1].type, "Test Type")
        XCTAssertEqual(waveList.waves[1].left, "Test Left")
        XCTAssertEqual(waveList.waves[1].right, "Test Right")
        XCTAssertEqual(waveList.waves[1].image, "Test Image")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
