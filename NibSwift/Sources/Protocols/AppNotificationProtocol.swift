import Foundation

public protocol AppNotificationProtocol {
    var name: String { get }
    static var center: NotificationCenter? { get }
}

extension AppNotificationProtocol {
    
    public static var center: NotificationCenter? {
        return nil
    }
    
    private var notificationName: Notification.Name {
        return Notification.Name(rawValue: name)
    }
    
    private var notificationCenter: NotificationCenter {
        return Self.center ?? .default
    }
    
    private func notificaion(notifier: Any? = nil, userInfo: [AnyHashable : Any]? = nil) -> Notification {
        Notification(name: notificationName, object: notifier, userInfo: userInfo)
    }
    
    public func addObserver(observer: Any, selector: Selector, notifier: Any? = nil) {
        notificationCenter.addObserver(observer, selector: selector, name: notificationName, object: notifier)
    }
    
    public func removeObserver(observer: Any, notifier: Any? = nil) {
        notificationCenter.removeObserver(observer, name: notificationName, object: notifier)
    }
    
    public func observe(notifier: Any? = nil, _ handler: @escaping (Notification) -> Void) -> AppNotificationObserver {
        return AppNotificationObserver(raw: notificationCenter.addObserver(forName: notificationName, object: notifier, queue: nil) { (notification) in
            handler(notification)
        }, owner: notificationCenter)
    }
    
    public func notify(notifier: Any? = nil, userInfo: [AnyHashable : Any]? = nil) {
        notificationCenter.post(notificaion(notifier: notifier, userInfo: userInfo))
    }
}

public final class AppNotificationObserver: NSObject {
    
    fileprivate let rawObserver: NSObjectProtocol
    fileprivate weak var owner: NotificationCenter?
    
    fileprivate init(raw: NSObjectProtocol, owner: NotificationCenter) {
        self.rawObserver = raw
        self.owner = owner
        super.init()
        owner.observers.insert(self)
    }
    
    public func remove() {
        owner?.removeObserver(rawObserver)
        owner?.observers.remove(self)
    }
}
