import XCTest
@testable import JinnyAppKit

class OptionalTests: XCTestCase {
    func test_Optional_isNil() {
        // given
        let optionalValue: Int? = nil
        // when
        let isNil = optionalValue.isNil
        // then
        XCTAssertEqual(isNil, true)
    }
    
    func test_NonOptional_isNotNil() {
        // given
        let optionalValue: Int? = 1
        // when
        let isNil = optionalValue.isNil
        // then
        XCTAssertEqual(isNil, false)
    }
}
