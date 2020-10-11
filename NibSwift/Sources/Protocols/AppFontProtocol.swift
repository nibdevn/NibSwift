import Foundation
import UIKit

public protocol AppFontProtocol {
    var name: String { get }
}

extension AppFontProtocol {
    public func font(size: CGFloat) -> UIFont? {
        return UIFont(name: self.name, size: size)
    }
}
