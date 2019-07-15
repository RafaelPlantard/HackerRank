//
//  RepeatedStringTests.swift
//  WarmUpChallengesTests
//
//  Created by Rafael Ferreira on 7/14/19.
//

import XCTest

@testable import WarmUpChallenges

final class RepeatedStringTests: XCTestCase {
    func testSampleInputCaseZero() {
        let given = RepeatedString(s: "aba", n: 10).run()

        XCTAssertEqual(given, 7)
    }

    func testSampleInputCaseOne() {
        let given = RepeatedString(s: "a", n: 1000000000000).run()

        XCTAssertEqual(given, 1000000000000)
    }

    static var allTests = [
        ("testSampleInputCaseZero", testSampleInputCaseZero),
        ("testSampleInputCaseOne", testSampleInputCaseOne)
    ]
}
