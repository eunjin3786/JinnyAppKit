import XCTest
@testable import JinnyAppKit

class DateTests: XCTestCase {
    
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
