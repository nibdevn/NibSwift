import Foundation
import UIKit

extension UIEdgeInsets {
    
    public func copy(top: CGFloat? = nil, left: CGFloat? = nil, bottom: CGFloat? = nil, right: CGFloat? = nil) -> UIEdgeInsets {
        return UIEdgeInsets(top: top ?? self.top,
                            left: left ?? self.left,
                            bottom: bottom ?? self.bottom,
                            right: right ?? self.right)
    }
    
    public mutating func set(top: CGFloat? = nil, left: CGFloat? = nil, bottom: CGFloat? = nil, right: CGFloat? = nil) {
        if let top = top { self.top = top }
        if let left = left { self.left = left }
        if let bottom = bottom { self.bottom = bottom }
        if let right = right { self.right = right }
    }
}

public func +(lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: lhs.top + rhs.top, left: lhs.left + rhs.left, bottom: lhs.bottom + rhs.bottom, right: lhs.right + rhs.right)
}

public func -(lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: lhs.top - rhs.top, left: lhs.left - rhs.left, bottom: lhs.bottom - rhs.bottom, right: lhs.right - rhs.right)
}


