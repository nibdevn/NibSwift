import Foundation
import UIKit

extension UIBarButtonItem {
    
    public typealias Action = () -> Void
    
    private struct UIBarButtonItemActionWrapper {
        fileprivate static var associatedActionAddress: UInt8 = 0
        fileprivate var action: Action?
        init(_ new: Action?) { action = new }
    }
    
    private var actionHandler: Action? {
        get {
            guard let wrapper = objc_getAssociatedObject(self, &UIBarButtonItemActionWrapper.associatedActionAddress) as? UIBarButtonItemActionWrapper else { return nil }
            return wrapper.action
        }set {
            objc_setAssociatedObject(self, &UIBarButtonItemActionWrapper.associatedActionAddress, UIBarButtonItemActionWrapper(newValue), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    public convenience init(title: String?, style: UIBarButtonItem.Style, _ handler: Action? = nil) {
        self.init(title: title, style: style, target: nil, action: nil)
        setAction(handler)
    }
    
    public convenience init(image: UIImage?, style: UIBarButtonItem.Style, _ handler: Action? = nil) {
        self.init(image: image, style: style, target: nil, action: nil)
        setAction(handler)
    }
    
    @objc private func onTappedBarButtonItem(sender: UIBarButtonItem) {
        actionHandler?()
    }
    
    private func setAction( _ handler: Action? = nil) {
        target = self
        action = #selector(onTappedBarButtonItem)
        actionHandler = handler
    }
}
