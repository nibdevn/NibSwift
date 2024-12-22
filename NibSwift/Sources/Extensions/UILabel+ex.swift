import Foundation
import UIKit

extension UILabel {
    
    public var fitSize: CGSize {
        return (text ?? "").size(font: font)
    }
    
    public var fitWidth: CGFloat {
        return fitSize.width
    }
    
    public var fitHeight: CGFloat {
        return fitSize.height
    }
}
