import Foundation
import UIKit

extension UIView {
    
    public func update(constraint: inout NSLayoutConstraint, firstItem: UIView) {
        updateConstraint(constraint: &constraint, next: constraint.clone(firstItem: firstItem))
    }
    
    public func update(constraint: inout NSLayoutConstraint, firstAttribute: NSLayoutConstraint.Attribute) {
        updateConstraint(constraint: &constraint, next: constraint.clone(firstAttribute: firstAttribute))
    }
    
    public func update(constraint: inout NSLayoutConstraint, relation: NSLayoutConstraint.Relation) {
        updateConstraint(constraint: &constraint, next: constraint.clone(relation: relation))
    }
    
    public func update(constraint: inout NSLayoutConstraint, secondItem: UIView) {
        updateConstraint(constraint: &constraint, next: constraint.clone(secondItem: secondItem))
    }
    
    public func update(constraint: inout NSLayoutConstraint, secondAttribute: NSLayoutConstraint.Attribute) {
        updateConstraint(constraint: &constraint, next: constraint.clone(secondAttribute: secondAttribute))
    }
    
    public func update(constraint: inout NSLayoutConstraint, multiplier: CGFloat) {
        updateConstraint(constraint: &constraint, next: constraint.clone(multiplier: multiplier))
    }
    
    public func update(constraint: inout NSLayoutConstraint, constant: CGFloat) {
        updateConstraint(constraint: &constraint, next: constraint.clone(constant: constant))
    }
    
    private func updateConstraint(constraint: inout NSLayoutConstraint, next: NSLayoutConstraint) {
        constraints.filter { $0 == constraint }.forEach { removeConstraint($0) }
        addConstraint(next)
        constraint = next
    }
}
