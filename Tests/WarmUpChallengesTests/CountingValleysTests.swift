//
//  CountingValleysTests.swift
//  WarmUpChallengesTests
//
//  Created by Rafael Ferreira on 7/14/19.
//

import XCTest

@testable import WarmUpChallenges

final class CountingValleysTests: XCTestCase {
    func testSampleInputCaseZero() {
        let given = CountingValleys(n: 8, s: "UDDDUDUU").run()

        XCTAssertEqual(given, 1)
    }

    func testSampleInputCaseOne() {
        let given = CountingValleys(n: 12, s: "DDUUDDUDUUUD").run()

        XCTAssertEqual(given, 2)
    }

    static var allTests = [
        ("testSampleInputCaseZero", testSampleInputCaseZero),
        ("testSampleInputCaseOne", testSampleInputCaseOne)
    ]
}
