import Foundation

extension Dictionary {
    
    public func has(key: Key) -> Bool {
        return keys.contains(key)
    }

    public func keys(where filter: (Key) throws -> Bool) rethrows -> [Key] {
        return try keys.filter { try filter($0) }
    }
    
    public func keysByValue(where filter: (Value) throws -> Bool) rethrows -> [Key] {
        return try self.filter { try filter($0.value) }.compactMap { $0.key }
    }
    
    public static func +<< (lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
        var result = lhs
        rhs.filter { result.keys.contains($0.key) == false }.forEach {
            result[$0] = $1
        }
        return result
    }
    
    public static func +>> (lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
        var result = lhs
        rhs.forEach { result[$0] = $1 }
        return result
    }
}

infix operator +>>
infix operator +<<

