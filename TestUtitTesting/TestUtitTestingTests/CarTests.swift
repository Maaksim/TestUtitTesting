//
//  CarTests.swift
//  TestUtitTestingTests
//
//  Created by Maksym Vitovych on 08.08.2021.
//

import XCTest
@testable import TestUtitTesting

class CarTests: XCTestCase {

    var ferrari: Car!
    var jeep: Car!
    var honda: Car!

    override func setUpWithError() throws {
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }

    override func tearDownWithError() throws {
        ferrari = nil
        jeep = nil
        honda = nil
    }

    func testSportFasterThanJeep() {
       let minutes = 60
       //1 start ferrari
       ferrari.start(minutes: minutes)
       //2 start jeep
       jeep.start(minutes: minutes)
       //Test it
       XCTAssertTrue(ferrari.miles > jeep.miles)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
