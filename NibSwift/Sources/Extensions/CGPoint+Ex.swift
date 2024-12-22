#if canImport(CoreGraphics)
import CoreGraphics
import Foundation

extension CGPoint {
    
    /// Copy and return a CGPoint instance.
    ///
    ///     CGPoint(x: 100, y: 100).copy() -> CGPoint(x: 100, y: 100)
    ///     CGPoint(x: 100, y: 100).copy(x: 10) -> CGPoint(x: 10, y: 100)
    ///     CGPoint(x: 100, y: 100).copy(y: 20) -> CGPoint(x: 100, y: 20)
    ///
    /// - Parameters:
    ///     - x: Change the property value of X and copy it. If nil, use the property value of x for self.
    ///     - y: Change the property value of Y and copy it. If nil, use the property value of y for self.
    public func copy(x: CGFloat? = nil, y: CGFloat? = nil) -> CGPoint {
        return CGPoint(x: x ?? self.x, y: y ?? self.y)
    }
    
    
    /// Set the x and y values of self to the x and y values received as parameters.
    ///
    ///     CGPoint(x: 100, y: 100).set(10, 20) -> CGPoint(x: 10, y: 20)
    ///
    /// - Parameters:
    ///     - x: The value of x to be changed.
    ///     - y: The value of y to be changed.
    @discardableResult
    public mutating func set(_ x: CGFloat, _ y: CGFloat) -> CGPoint {
        self.x = x
        self.y = y
        return self
    }
}

public func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

public func +(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x + rhs, y: lhs.y + rhs)
}

public func +(lhs: CGPoint, rhs: CGSize) -> CGRect {
    return CGRect(origin: lhs, size: rhs)
}

public func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

public func -(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x - rhs, y: lhs.y - rhs)
}
#endif
