import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SockMerchantTests.allTests),
        testCase(CountingValleysTests.allTests)
    ]
}
#endif
