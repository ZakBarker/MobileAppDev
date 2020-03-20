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
    var wave = Wave(name: "South Straddie", country: "Australia", type: "Beach Break", left: "Average", right: "Sick Barrels", image: "teahupoo")
    var waveList = WaveList()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        waveList.addWave(wave: <#T##Wave#>)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testWave() {
        XCTAssertEqual(wave.name, "South Straddie")
        XCTAssertEqual(wave.country, "Australia")
        XCTAssertEqual(wave.type, "Beach Break")
        XCTAssertEqual(wave.left, "Average")
        XCTAssertEqual(wave.right, "Sick Barrels")
    }

    func testWaves(){
        XCTAssertEqual(waveList.waves.count, 0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
