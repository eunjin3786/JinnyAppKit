import XCTest
@testable import JinnyAppKit

class DateTests: XCTestCase {
    
    var date: Date!

    override func setUp() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        date = formatter.date(from: "2020-01-01 00:00:00")!
    }
    
    func testMonthFromDate() {
        // when
        let month = date.month
        // then
        XCTAssertEqual(month, 1)
    }
    
    func testMonthNameFromDate() {
        // when
        let monthName = date.monthName
        // then
        XCTAssertEqual(month, "January")
    }
}
