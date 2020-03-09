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
    var wave = Wave(name: "South Straddie", country: "Australia", type: "Beach Break", left: "Average", right: "Sick Barrels")

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testWave() {
        XCTAssertEqual(wave.name, "South Straddie")
        XCTAssertEqual(wave.country, "Australia")
        XCTAssertEqual(wave.type, "Beach Break")
        XCTAssertEqual(wave.left, "Average")
        XCTAssertEqual(wave.right, "Sick Barrels")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
