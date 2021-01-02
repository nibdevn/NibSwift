import Foundation
import UIKit

extension UITableViewCell {
    
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

extension UITableViewHeaderFooterView {
    
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
