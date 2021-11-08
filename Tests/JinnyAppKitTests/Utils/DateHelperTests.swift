import XCTest
@testable import JinnyAppKit

class DateHelperTests: XCTestCase {
    
    func test_DateHelper가_Date를_잘_만들어주는지() throws {
        // when
        let date = DateHelper.date(year: 2020, month: 1, day: 1)
        // then
        let unwrappedDate = try XCTUnwrap(date)
        XCTAssertEqual(unwrappedDate.year, 2020)
        XCTAssertEqual(unwrappedDate.month, 1)
        XCTAssertEqual(unwrappedDate.day, 1)
    }
    
    func test_DateHelper가_몇년후의_Date를_잘_만들어주는지() throws {
        // given
        let baseDate = try XCTUnwrap(DateHelper.date(year: 2020, month: 1, day: 1))
        // when
        let twoYearsAferDate = DateHelper.dateAfter(years: 2, from: baseDate)
        let unwrappedDate = try XCTUnwrap(twoYearsAferDate)
        // then
        XCTAssertEqual(unwrappedDate.year, 2022)
    }
}
