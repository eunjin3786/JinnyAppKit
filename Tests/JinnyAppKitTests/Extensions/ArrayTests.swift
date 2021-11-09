import XCTest
@testable import JinnyAppKit

class ArrayTests: XCTestCase {

    func test_safe_subscript_when_valid_index() throws {
        // given
        let array = [1,2,3]
        // when
        let element = array[safe: 1]
        // then
        XCTAssertEqual(element, array[1])
    }
    
    func test_safe_subscript_when_invalid_index() throws {
        // given
        let array = [1,2,3]
        // when
        let element = array[safe: 4]
        // then
        XCTAssertEqual(element, nil)
    }
}


