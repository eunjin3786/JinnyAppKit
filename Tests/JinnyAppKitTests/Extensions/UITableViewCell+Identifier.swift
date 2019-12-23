import XCTest
@testable import JinnyAppKit

class UITableViewCellIdentifierTest: XCTestCase {
    
    func test_클래스네임과_identifier가_같은지() {
        // given
        let className = "\(TestTableViewCell.self)"
        // when
        let identifier = TestTableViewCell.identifier
        // then
        XCTAssertEqual(className, identifier)
    }
}
