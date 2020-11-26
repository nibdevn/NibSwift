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
}
