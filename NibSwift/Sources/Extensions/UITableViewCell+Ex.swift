import Foundation
import UIKit

extension UITableViewCell {
    
    public func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
}

extension UITableViewHeaderFooterView {
    
    public func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        self.backgroundView = view
    }
}
