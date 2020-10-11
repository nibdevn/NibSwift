//
//  UIWindow+Ex.swift
//  AppApp
//
//  Created by MacBook-Na on 2020/10/02.
//

import Foundation
import UIKit

extension UIWindow {
    
    public static var keyWindow: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
    
    public func start(at viewController: UIViewController) {
        self.rootViewController = viewController
        self.makeKeyAndVisible()
    }
}
