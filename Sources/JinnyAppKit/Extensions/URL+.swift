import Foundation

extension URL {
    public subscript(key: String) -> String? {
        let urlComponets = URLComponents(string: self.absoluteString)
        return urlComponets?.queryItems?.first(where: { $0.name == key })?.value
    }
    
    public var parameters: [String: Any?] {
        var dic: [String: Any?] = [:]
        
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: false) else { return dic }
        guard let queryItems = components.queryItems else { return dic }
        
        for item in queryItems {
            dic[item.name] = item.value
        }
        return dic
    }
}
