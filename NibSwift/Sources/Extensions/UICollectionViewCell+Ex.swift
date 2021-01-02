import Foundation
import UIKit

extension UICollectionViewCell {
    
    public func setBackgroundColor(_ color: UIColor) {
        if #available(iOS 13.0, *) {
            contentView.backgroundColor = color
        }else {
            let view = UIView()
            view.backgroundColor = color
            self.backgroundView = view
        }
    }
}
