import XCTest

@testable import Arrays

final class TwoDArrayDSTests: XCTestCase {
    func testSampleInputCaseZero() {
        let given = TwoDArrayDS(arr: [
            [1, 1, 1, 0, 0, 0],
            [0, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 0],
            [0, 0, 2, 4, 4, 0],
            [0, 0, 0, 2, 0, 0],
            [0, 0, 1, 2, 4, 0]
        ]).run()

        XCTAssertEqual(given, 19)
    }
    
}
