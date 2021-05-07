import Foundation

public extension Optional {
    var isNil: Bool {
        switch self {
        case .some:
            return false
        case .none:
            return true
        }
    }

    var isNotNil: Bool {
        return !isNil
    }
}

public extension String {
    var hasElement: Bool {
        return !self.isEmpty
    }
    
    func matchingKeywords(regexPattern: String) -> [String] {
        if self.isEmpty {
            return []
        }
        
        do {
            let regex = try NSRegularExpression(pattern: regexPattern)
            let results = regex.matches(in: self, range: NSRange(location: 0, length: self.count))
            let keywords = results
                .compactMap { Range($0.range, in: self) }
                .map { String(self[$0]) }
            return keywords
        } catch {
            return []
        }
    }
}

public extension Array {
    
    var hasElement: Bool {
        return !self.isEmpty
    }
    
    mutating func popFirst() -> Element? {
        return self[self.indices].popFirst()
    }
    
    mutating func removeFirstIfExist() {
        if self.hasElement {
            self.removeFirst()
        }
    }
    
    mutating func removeLastIfExist() {
        if self.hasElement {
            self.removeLast()
        }
    }
}
