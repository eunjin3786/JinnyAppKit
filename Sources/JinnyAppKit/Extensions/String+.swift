import Foundation

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
    
    subscript(i: Int) -> String {
        get {
            let index = index(startIndex, offsetBy: i)
            return String(self[index])
        }
        set {
            let index = index(startIndex, offsetBy: i)
            remove(at: index)
            insert(Character(newValue), at: index)
        }
    }
    
    subscript(safe i: Int) -> String? {
        get {
            let index = index(startIndex, offsetBy: i)
            if startIndex...endIndex ~= index {
                return String(self[index])
            } else {
                return nil
            }
        }
        set {
            let index = index(startIndex, offsetBy: i)
            if startIndex...endIndex ~= index, let newValue {
                remove(at: index)
                insert(Character(newValue), at: index)
            }
        }
    }
}
