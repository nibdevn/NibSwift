extension Collection {
    
    public func count(where filter: (Element) throws -> Bool) rethrows -> Int {
        return try self.filter(filter).count
    }
    
    public func first(where filter: (Element) throws -> Bool) rethrows -> Element? {
        return try self.filter(filter).first
    }
    
    public func last(where filter: (Element) throws -> Bool) rethrows -> Element? {
        return try self.filter(filter).last
    }

    public func indices(where filter: (Element) throws -> Bool) rethrows -> [Index] {
        return try indices.filter { try filter(self[$0]) }
    }
    
    public func dictionary<Key: Hashable, Value: Any>(_ wrapping: (Element) -> (key: Key, value: Value)) -> [Key: Value] {
        var result = [Key: Value]()
        self.forEach {
            let wrapped = wrapping($0)
            result[wrapped.key] = wrapped.value
        }
        return result
    }
    
    public func random(count: Int) -> [Element] {
        guard self.count > count && count > 0 else { return [] }
        return (0..<count).compactMap { _ in return self.randomElement() }
    }
}

extension Collection where Element: Equatable {
    
    public func unique() -> [Element] {
        var result: [Element] = []
        for element in self where result.contains(element) == false {
            result.append(element)
        }
        return result
    }
    
    public func randomUnique(count: Int) {
        
    }
    
    public func random(count: Int, isUnique: Bool) -> [Element] {
        guard isUnique && unique().count >= count else { return random(count: count) }
        var result = [Element]()
        while result.count < count {
            let temp = random(count: 1)[0]
            if result.contains(temp) == false {
                result.append(temp)
            }
        }
        return result
    }
}



