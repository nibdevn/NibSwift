import Foundation
import UIKit

extension CGRect {
    
    public func copy(x: CGFloat? = nil, y: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) -> CGRect {
        return CGRect(x: x ?? self.origin.x,
                      y: y ?? self.origin.y,
                      width: width ?? self.width,
                      height: height ?? self.height
        )
    }

    public mutating func set(x: CGFloat? = nil, y: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) {
        self = self.copy(x: x, y: y, width: width, height: height)
    }
}

public func +(lhs: CGRect, rhs: CGRect) -> CGRect {
    return CGRect(x: lhs.origin.x + rhs.origin.x, y: lhs.origin.y + rhs.origin.y, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

public func +(lhs: CGRect, rhs: CGPoint) -> CGRect {
    return CGRect(x: lhs.origin.x + rhs.x, y: lhs.origin.y + rhs.y, width: lhs.width, height: lhs.height)
}

public func +(lhs: CGRect, rhs: CGSize) -> CGRect {
    return CGRect(x: lhs.origin.x, y: lhs.origin.y, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

public func -(lhs: CGRect, rhs: CGRect) -> CGRect {
    return CGRect(x: lhs.origin.x - rhs.origin.x, y: lhs.origin.y - rhs.origin.y, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
}

public func -(lhs: CGRect, rhs: CGPoint) -> CGRect {
    return CGRect(x: lhs.origin.x - rhs.x, y: lhs.origin.y - rhs.y, width: lhs.width, height: lhs.height)
}

public func -(lhs: CGRect, rhs: CGSize) -> CGRect {
    return CGRect(x: lhs.origin.x, y: lhs.origin.y, width: lhs.width - rhs.width, height: lhs.height - rhs.height)
}
