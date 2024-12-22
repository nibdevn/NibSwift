import Foundation
import UIKit

extension NSLayoutConstraint {
    
    @discardableResult
    public func clone(firstItem: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: firstItem,
                                  attribute: self.firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: self.secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: self.multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(firstAttribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: self.secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: self.multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(relation: NSLayoutConstraint.Relation) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: self.firstAttribute,
                                  relatedBy: relation,
                                  toItem: self.secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: self.multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(secondItem: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: self.firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: self.multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(secondAttribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: self.firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: self.secondItem,
                                  attribute: secondAttribute,
                                  multiplier: multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: self.firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: self.secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: multiplier,
                                  constant: self.constant)
    }
    
    @discardableResult
    public func clone(constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem as Any,
                                  attribute: self.firstAttribute,
                                  relatedBy: self.relation,
                                  toItem: self.secondItem,
                                  attribute: self.secondAttribute,
                                  multiplier: multiplier,
                                  constant: constant)
    }
    
    public static func update(constraint: inout NSLayoutConstraint, firstItem: UIView) {
        update(constraint: &constraint) { $0 = $0.clone(firstItem: firstItem) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, firstAttribute: NSLayoutConstraint.Attribute) {
        update(constraint: &constraint) { $0 = $0.clone(firstAttribute: firstAttribute) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, relation: NSLayoutConstraint.Relation) {
        update(constraint: &constraint) { $0 = $0.clone(relation: relation) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, secondItem: UIView) {
        update(constraint: &constraint) { $0 = $0.clone(secondItem: secondItem) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, secondAttribute: NSLayoutConstraint.Attribute) {
        update(constraint: &constraint) { $0 = $0.clone(secondAttribute: secondAttribute) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, multiplier: CGFloat) {
        update(constraint: &constraint) { $0 = $0.clone(multiplier: multiplier) }
    }
    
    public static func update(constraint: inout NSLayoutConstraint, constant: CGFloat) {
        update(constraint: &constraint) { $0 = $0.clone(constant: constant) }
    }
    
    private static func update(constraint: inout NSLayoutConstraint, updating: @escaping (inout NSLayoutConstraint) -> Void) {
        constraint.isActive = false
        updating(&constraint)
        constraint.isActive = true
    }
}
