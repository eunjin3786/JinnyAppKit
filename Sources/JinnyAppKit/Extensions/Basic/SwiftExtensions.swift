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
}
