import XCTest
@testable import JinnyAppKit

class DateTests: XCTestCase {

    func test_Date에서_Month를_잘_가져오는지() throws {
        // given
        let date = DateHelper.date(year: 2020, month: 1, day: 1)
        let unwrappedDate = try XCTUnwrap(date)
        // when
        let month = unwrappedDate.month
        // then
        XCTAssertEqual(month, 1)
    }
    
    func test_Date에서_Month이름을_잘_가져오는지() throws {
        // given
        let date = DateHelper.date(year: 2020, month: 1, day: 1)
        let unwrappedDate = try XCTUnwrap(date)
        // when
        let monthName = unwrappedDate.monthName
        // then
        XCTAssertEqual(monthName, "January")
    }
}

