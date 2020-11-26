import Foundation
import UIKit

extension UIScrollView {
    
    public func setScrollToTop(includeInset: Bool, animated: Bool) {
        setContentOffset(CGPoint(x: includeInset ? -contentInset.left : 0, y: includeInset ? -contentInset.top : 0), animated: animated)
        self.layoutIfNeeded()
    }
}
