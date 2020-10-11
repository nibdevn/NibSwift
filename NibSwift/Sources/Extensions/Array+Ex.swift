import Foundation

extension Array {
    
    public mutating func sortItems(target: Int, next: Int) {
        guard self.count > 0 && self.count > target && self.count >= next && target >= 0 && next >= 0 && target != next else { return }
        if target > next {
            self.insert(self[target], at: next)
            self.remove(at: target + 1)
        }else {
            self.insert(self[target], at: next)
            self.remove(at: target)
        }
    }
    
    public mutating func replace(_ index: Int ,at value: Element) {
        guard self.count > index && index >= 0 else { return }
        self[index] = value
    }
}
