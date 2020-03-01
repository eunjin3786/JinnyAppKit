import Foundation

extension Optional {
    public var isNil: Bool {
        switch self {
        case .some:
            return false
        case .none:
            return true
        }
    }

    public var isNotNil: Bool {
        return !isNil
    }
}

extension String {
    public var hasElement: Bool {
        return !self.isEmpty
    }
    
    public func matchingKeywords(regexPattern: String) -> [String] {
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
