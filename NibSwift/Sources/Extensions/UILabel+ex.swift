import Foundation
import UIKit

extension UILabel {
    
    var fitSize: CGSize {
        return (text ?? "").getSizeString(font: font)
    }
    
    var fitWidth: CGFloat {
        return fitSize.width
    }
    
    var fitHeight: CGFloat {
        return fitSize.height
    }
}
