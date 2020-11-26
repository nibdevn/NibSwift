import Foundation
import UIKit

extension UICollectionView {
    
    public func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
}
