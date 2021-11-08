import XCTest
@testable import JinnyAppKit

class RegexTests: XCTestCase {
    
    func test_find_texts_between_bold_tags() {
        // given
        let sampleText = "<b>안녕</b>라이언 <b>안녕</b> 한라봉"
        // when
        let texts = sampleText.matchingKeywords(regexPattern: "<b>(.*?)</b>")
        // then
        XCTAssertEqual(texts.count, 2)
        texts.forEach {
            XCTAssertEqual($0, "<b>안녕</b>")
        }
    }
    
    func test_find_get_parameters() {
        // given
        let sampleURL = "https://www.test.com/users?gender=male&age=20&job=designer﻿"
        // when
        let texts = sampleURL.matchingKeywords(regexPattern: "[^&?]+?=[^&?]+")
        // then
        XCTAssertEqual(texts.count, 3)
        XCTAssertEqual(texts[0], "gender=male")
        XCTAssertEqual(texts[1], "age=20")
        XCTAssertEqual(texts[2], "job=designer﻿")
        
        var dic: [String: String] = [:]
        texts.forEach {
            let array = $0.split(separator: "=").map { String($0) }
            if array.count == 2 {
                dic[array[0]] = array[1]
            }
        }
        XCTAssertEqual(dic["gender"], "male")
        XCTAssertEqual(dic["age"], "20")
        XCTAssertEqual(dic["job"], "designer﻿")
    }
}
