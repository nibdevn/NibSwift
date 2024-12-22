#if canImport(UIKit)
import UIKit

extension UIWindow {
    
    
    /// Returns keyWindow in UI Application shared divided into iOS13 and later.
    public static var keyWindow: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
    
    
    /// Change the rootViewController in the window.
    ///
    ///     window?.start(at: ViewController())
    ///
    /// - Parameters:
    ///     - at viewController: UIViewController type instance that becomes the window rootViewController.
    public func start(at viewController: UIViewController?) {
        self.rootViewController = viewController
        self.makeKeyAndVisible()
    }
}
#endif
