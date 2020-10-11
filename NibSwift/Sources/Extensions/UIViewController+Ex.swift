import UIKit

extension UIViewController {
    
    public func getFrameWithTabBarController(_ tabBarController: UITabBarController) -> CGRect {
        let size: CGSize = CGSize(width: self.view.frame.width, height: self.view.frame.height - tabBarController.tabBar.frame.height)
        return CGRect(origin: self.view.frame.origin, size: size)
    }
    
    public class func topViewController(controller: UIViewController? = UIWindow.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
    
    public static func getViewController(storyboad: String, bundle: Bundle? = nil) -> UIViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: storyboad, bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController()
        return viewController!
    }
    
    public static func getViewController(storyboad: String, identifier: String, bundle: Bundle? = nil) -> UIViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: storyboad, bundle: bundle)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier)
        return viewController
    }
}
