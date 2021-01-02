import Foundation
import UIKit

extension UIScrollView {
    
    public func stopScrolling() {
        let offset = contentOffset
        setContentOffset(offset, animated: false)
    }
    
    public func setScrollToTop(includeInset: Bool, animated: Bool) {
        setContentOffset(CGPoint(x: includeInset ? -contentInset.left : 0, y: includeInset ? -contentInset.top : 0), animated: animated)
        self.layoutIfNeeded()
    }
}
