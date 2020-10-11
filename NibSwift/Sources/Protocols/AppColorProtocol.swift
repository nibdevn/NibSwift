import Foundation
import UIKit


public protocol AppColorProtocol {
    var hex: String { get }
}

extension AppColorProtocol {
    public var color: UIColor { UIColor(hex: hex) }
    public var cgColor: CGColor { UIColor(hex: hex).cgColor }
}
