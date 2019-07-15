//
//  JumpingOnTheCloudsTests.swift
//  WarmUpChallengesTests
//
//  Created by Rafael Ferreira on 7/14/19.
//

import XCTest

@testable import WarmUpChallenges

final class JumpingOnTheCloudsTests: XCTestCase {
    func testSampleInputCaseZero() {
        let given = JumpingOnTheClouds(c: [0, 0, 1, 0, 0, 1, 0]).run()

        XCTAssertEqual(given, 4)
    }

    func testSampleInputCaseOne() {
        let given = JumpingOnTheClouds(c: [0, 0, 0, 1, 0, 0]).run()

        XCTAssertEqual(given, 3)
    }

    static var allTests = [
        ("testSampleInputCaseZero", testSampleInputCaseZero),
        ("testSampleInputCaseOne", testSampleInputCaseOne)
    ]
}
