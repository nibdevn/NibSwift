import UIKit

extension UIApplication {
    
    // MARK: - Enum
    public enum plistDictionaryKey: String, CaseIterable {
        case appVersion = "CFBundleShortVersionString"
        case appBuild = "CFBundleVersion"
        case appName = "CFBundleDisplayName"
        case bundleName = "CFBundleName"
        case launchStoryBoard = "UILaunchStoryboardName"
        case mainStoryBoard = "UIMainStoryboardFile"
    }
    
    // MARK: - Public Static Methods
    @available(iOS, deprecated: 13.0)
    public static func setNetworkIndicator( _ value: Bool) {
        guard UIApplication.shared.isNetworkActivityIndicatorVisible != value else { return }
        UIApplication.shared.isNetworkActivityIndicatorVisible = value
    }
    
    public static func getOSVersion() -> String { return UIDevice.current.systemVersion }
    
    public static func getPlistInfoValue(key: plistDictionaryKey) -> String {
        guard let dictionary = Bundle.main.infoDictionary, let value = dictionary[key.rawValue] as? String else { return "" }
        return value
    }
    
    @available(iOS 10.0, *)
    public static func goURL(string: String, completionHandler: ((Bool) -> Void)? = nil) {
        guard string.isEmpty == false, let url = URL(string: string) else { return }
        goURL(url: url, completionHandler: completionHandler)
    }
    
    @available(iOS 10.0, *)
    public static func goURL(url: URL, completionHandler: ((Bool) -> Void)? = nil) {
        guard UIApplication.shared.canOpenURL(url) else { return }
        UIApplication.shared.open(url, completionHandler: { (success) in
            if let completionHandler = completionHandler { completionHandler(success) }
        })
    }
    
    @available(iOS 10.0, *)
    public static func goSettingAction(completionHandler: ((Bool) -> Void)? = nil) {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        goURL(url: settingsUrl, completionHandler: completionHandler)
    }
    
    @available(iOS 10.0, *)
    public static func goAppStore(appid: String, _ completionHandler: ((Bool) -> Void)? = nil) {
        guard appid.isEmpty == false else { return }
        let url = "itms-apps://itunes.apple.com/app/id\(appid)"
        goURL(string: url, completionHandler: completionHandler)
    }
    
    @available(iOS 11.0, *)
    public static var safeArea: UIEdgeInsets {
        return UIWindow.keyWindow?.safeAreaInsets ?? .zero
    }
}
