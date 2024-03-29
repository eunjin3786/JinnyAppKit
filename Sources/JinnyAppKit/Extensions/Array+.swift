import Foundation

public extension Array {
    
    var hasElement: Bool {
        return !self.isEmpty
    }
    
    subscript(safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
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
