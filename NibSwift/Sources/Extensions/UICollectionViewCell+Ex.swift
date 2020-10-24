import Foundation
import UIKit

extension UICollectionView {
    
    func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
}


