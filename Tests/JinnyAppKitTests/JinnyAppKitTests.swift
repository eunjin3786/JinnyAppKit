import XCTest
@testable import JinnyAppKit

final class JinnyAppKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(JinnyAppKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
