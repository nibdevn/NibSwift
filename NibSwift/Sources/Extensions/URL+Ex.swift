import Foundation

public func +(lhs: URL, rhs: String) -> URL {
    return lhs.appendingPathComponent(rhs)
}
