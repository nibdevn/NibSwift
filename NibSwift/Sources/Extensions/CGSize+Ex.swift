import Foundation
import UIKit

extension CGSize {
    
    public func copy(width: CGFloat? = nil, height: CGFloat? = nil) -> CGSize {
        return CGSize(width: width ?? self.width, height: height ?? self.height)
    }
    
    public mutating func set(_ width: CGFloat, _ height: CGFloat) {
        self = self.copy(width: width, height: height)
    }
}

public func +(lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

public func +(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width + rhs, height: lhs.height + rhs)
}

public func +(lhs: CGSize, rhs: CGPoint) -> CGRect {
    return CGRect(origin: rhs, size: lhs)
}

public func -(lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
}

public func -(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width - rhs, height: lhs.height - rhs)
}
