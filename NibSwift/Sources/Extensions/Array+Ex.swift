import Foundation

extension Array {
    
    public mutating func sorting(from: Int, to: Int) {
        guard self.count > 0 && self.count > from && self.count > to && from >= 0 && to >= 0 && from != to else { return }
        self.insert(self[from], at: from > to ? to : to + 1)
        self.remove(at: from > to ? from + 1 : from)
    }
    
    public mutating func replace(_ index: Int ,at value: Element) {
        guard self.count > index && index >= 0 else { return }
        self[index] = value
    }
    
    public mutating func change(from: Int , to: Int) {
        guard self.count > from && self.count > to && from != to && from >= 0 && to >= 0 else { return }
        let fromItem = self[from]
        let toItem = self[to]
        self[from] = toItem
        self[to] = fromItem
    }
    
    public func dictionary<Key: Hashable, Value: Any>( _ wrapping: (Element) -> (key: Key, value: Value)) -> [Key: Value] {
        var result = [Key: Value]()
        self.forEach {
            let wrapped = wrapping($0)
            result[wrapped.key] = wrapped.value
        }
        return result
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
    
    public func random(count: Int) -> [Element] {
        guard self.count > 0 && count > 0 else { return [] }
        return (0..<count).map { _ in return self[Int.random(min: 0, max: self.count-1)] }
    }
}

extension Array where Element: Hashable {
    
    public func unique() -> [Element] {
        return Array(Set(self))
    }
}

extension Array where Element: Equatable {
    
    public func unique() -> [Element] {
        var result: [Element] = []
        for element in self where result.contains(element) == false {
            result.append(element)
        }
        return result
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
    
    public mutating func remove(object: Element) {
        self = self.filter ({ $0 != object })
    }
}
