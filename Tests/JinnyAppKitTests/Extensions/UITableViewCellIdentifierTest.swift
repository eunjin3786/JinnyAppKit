import XCTest
@testable import JinnyAppKit

class TestTableViewCell: UITableViewCell {
    
}

class UITableViewCellIdentifierTest: XCTestCase {
    
    func test_클래스네임과_reuseIdentifier가_같은지() {
        // given
        let className = "\(TestTableViewCell.self)"
        // when
        let identifier = TestTableViewCell.reuseIdentifier
        // then
        XCTAssertEqual(className, identifier)
    }
}
