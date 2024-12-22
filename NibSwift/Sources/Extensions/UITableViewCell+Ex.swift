import Foundation
import UIKit

extension UITableViewCell {
    
    public func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        backgroundView = view
        if #available(iOS 13.0, *) {
            contentView.backgroundColor = color
        }else {
            backgroundColor = color
        }
    }
}

extension UITableViewHeaderFooterView {
    
    public func setBackgroundColor(_ color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        backgroundView = view
        if #available(iOS 13.0, *) {
            contentView.backgroundColor = color
        }else {
            backgroundColor = color
        }
    }
}
