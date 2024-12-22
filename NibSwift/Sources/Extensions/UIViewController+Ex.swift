#if canImport(UIKit)
import UIKit

extension UIViewController {
    
    public func getFrameWithTabBarController(_ tabBarController: UITabBarController) -> CGRect {
        let size: CGSize = CGSize(width: self.view.frame.width, height: self.view.frame.height - tabBarController.tabBar.frame.height)
        return CGRect(origin: self.view.frame.origin, size: size)
    }
    
    public class func topViewController(at controller: UIViewController? = UIWindow.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(at: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(at: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(at: presented)
        }
        return controller
    }
    
    public static func getViewController(storyboard: String, bundle: Bundle? = nil) -> UIViewController? {
        let _storyboard: UIStoryboard = UIStoryboard(name: storyboard, bundle: bundle)
        return _storyboard.instantiateInitialViewController()
    }
    
    public static func getViewController(storyboard: String, identifier: String, bundle: Bundle? = nil) -> UIViewController {
        let _storyboard: UIStoryboard = UIStoryboard(name: storyboard, bundle: bundle)
        return _storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
#endif
