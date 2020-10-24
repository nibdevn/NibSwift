import Foundation
import UIKit


extension UITableViewCell {
    
    func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
    
}

extension UITableViewHeaderFooterView {
    
    func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
}
