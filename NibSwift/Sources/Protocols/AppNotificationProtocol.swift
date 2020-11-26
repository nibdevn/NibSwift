import Foundation

public protocol AppNotificationProtocol {
    var name: String { get }
}

extension AppNotificationProtocol {
    
    private var notificationName: Notification.Name {
        return Notification.Name(rawValue: name)
    }
    
    func notificaion(object: Any? = nil, userInfo: [AnyHashable : Any]? = nil) -> Notification {
        Notification(name: notificationName, object: object, userInfo: userInfo)
    }
    
    func post(object: Any? = nil, userInfo: [AnyHashable : Any]? = nil) {
        NotificationCenter.default.post(notificaion(object: object, userInfo: userInfo))
    }
    
    func addObserver(observer: Any, selector: Selector, object: Any? = nil) {
        NotificationCenter.default.addObserver(observer, selector: selector, name: notificationName, object: object)
    }
    
    func removeObserver(observer: Any, object: Any? = nil) {
        NotificationCenter.default.removeObserver(observer, name: notificationName, object: object)
    }
}
