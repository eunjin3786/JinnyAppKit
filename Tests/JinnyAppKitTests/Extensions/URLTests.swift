import XCTest
@testable import JinnyAppKit

class URLTests: XCTestCase {
    
    func testGetParametersFromURL() {
        let url = URL(string: "https://www.test.com/users?gender=male&age=20")!
        
        let parameters = url.parameters
        XCTAssertEqual(parameters["gender"] as! String, "male")
        XCTAssertEqual(parameters["age"] as! String, "20")
    }
    
    func testGetParameterFromURL() {
        let url = URL(string: "https://www.test.com/users?gender=male&age=20")!
        
        XCTAssertEqual(url["gender"], "male")
    }
}
