import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SockMerchantTests.allTests),
        testCase(CountingValleysTests.allTests),
        testCase(JumpingOnTheCloudsTests.allTests),
        testCase(RepeatedStringTests.allTests)
    ]
}
#endif
