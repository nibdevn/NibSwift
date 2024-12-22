import Foundation

extension NotificationCenter {
    
    private class NotificationCenterObserverWrapper {
        fileprivate static var associatedObserverSetAddress: UInt8 = 0
        fileprivate let observers: Set<AppNotificationObserver>
        init(_ new: Set<AppNotificationObserver>) { observers = new }
    }
    
    var observers: Set<AppNotificationObserver> {
        get {
            guard let wrapper = objc_getAssociatedObject(self, &NotificationCenterObserverWrapper.associatedObserverSetAddress) as? NotificationCenterObserverWrapper else { return [] }
            return wrapper.observers
        } set {
            objc_setAssociatedObject(self, &NotificationCenterObserverWrapper.associatedObserverSetAddress, NotificationCenterObserverWrapper(newValue), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
