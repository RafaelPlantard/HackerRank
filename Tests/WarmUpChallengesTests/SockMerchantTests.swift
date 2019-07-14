//
//  SockMerchantTests.swift
//  HackerRank
//
//  Created by Rafael Ferreira on 7/14/19.
//

import XCTest

@testable import WarmUpChallenges

final class SockMerchantTests: XCTestCase {
    func testSampleInputCaseZero() {
        let given = SockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]).run()

        XCTAssertEqual(given, 3)
    }

    func testSampleInputCaseOne() {
        let given = SockMerchant(n: 10, ar: [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]).run()

        XCTAssertEqual(given, 4)
    }

    static var allTests = [
        ("testSampleInputCaseZero", testSampleInputCaseZero),
        ("testSampleInputCaseOne", testSampleInputCaseOne)
    ]
}
