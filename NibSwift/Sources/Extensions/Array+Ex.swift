extension Array {
    
    public mutating func sorting(from: Int, to: Int) {
        guard self.count > 0 && self.count > from && self.count > to && from >= 0 && to >= 0 && from != to else { return }
        self.insert(self[from], at: from > to ? to : to + 1)
        self.remove(at: from > to ? from + 1 : from)
    }
    
    public mutating func replace(_ index: Int, at value: Element) {
        guard self.count > index && index >= 0 else { return }
        self[index] = value
    }
    
    public mutating func swap(_ i: Int, _ j: Int) {
        guard self.count > i && self.count > j && i != j && i >= 0 && j >= 0 else { return }
        let iItem = self[i]
        let jItem = self[j]
        self[i] = jItem
        self[j] = iItem
    }
    
    /// - Parameters:
    ///     - start: This value must be greater than or equal to 0.
    ///     - size:
    public func subArray(start: Int = 0, size: Int) -> [Element] {
        guard start >= 0 && size > 0 else { return [] }
        return (start..<Swift.min(start + size, count)).map { self[$0] }
    }
    
    public func stack() -> Stack<Element> {
        return Stack(self)
    }

    public func queue() -> Queue<Element> {
        return Queue(self)
    }
    
    public func deque() -> Deque<Element> {
        return Deque(self)
    }
}

extension Array where Element: Equatable {
    
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
    
    public mutating func remove(object: Element) {
        self = self.filter ({ $0 != object })
    }
}
