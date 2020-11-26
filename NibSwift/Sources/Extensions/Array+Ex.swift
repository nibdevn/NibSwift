import Foundation

extension Array {
    
    public mutating func sortItems(target: Int, next: Int) {
        guard self.count > 0 && self.count > target && self.count >= next && target >= 0 && next >= 0 && target != next else { return }
        self.insert(self[target], at: next)
        self.remove(at: target > next ? target + 1 : target)
    }
    
    public mutating func replace(_ index: Int ,at value: Element) {
        guard self.count > index && index >= 0 else { return }
        self[index] = value
    }
}

extension Array where Element: Hashable {
    
    public func unique() -> Self {
        let setData = Set(self)
        return Array(setData)
    }
}
