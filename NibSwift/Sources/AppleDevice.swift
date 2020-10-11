import Foundation

public enum AppleDeviceType {
    case simulator
    case iPhone
    case iPod
    case iPad
    case watch
    case unknown
}

fileprivate let DeviceDictionary:[String : [String: AppleDeviceType]] = [
    /* Simulator */
    "i386"      :["Simulator": .simulator],
    "x86_64"    :["Simulator": .simulator],
    
    /* iPhone */
    "iPhone1,1"   :["iPhone 2G": .iPhone],
    "iPhone1,2"   :["iPhone 3G": .iPhone],
    "iPhone2,1"   :["iPhone 3GS": .iPhone],
    "iPhone3,1"   :["iPhone 4": .iPhone],
    "iPhone3,2"   :["iPhone 4": .iPhone],
    "iPhone3,3"   :["iPhone 4": .iPhone],
    "iPhone4,1"   :["iPhone 4S": .iPhone],
    "iPhone5,1"   :["iPhone 5": .iPhone],
    "iPhone5,2"   :["iPhone 5": .iPhone],
    "iPhone5,3"   :["iPhone 5c": .iPhone],
    "iPhone5,4"   :["iPhone 5c": .iPhone],
    "iPhone6,1"   :["iPhone 5s": .iPhone],
    "iPhone6,2"   :["iPhone 5s": .iPhone],
    "iPhone7,1"   :["iPhone 6 Plus": .iPhone],
    "iPhone7,2"   :["iPhone 6": .iPhone],
    "iPhone8,1"   :["iPhone 6S": .iPhone],
    "iPhone8,2"   :["iPhone 6S Plus": .iPhone],
    "iPhone8,4"   :["iPhone SE": .iPhone],
    "iPhone9,1"   :["iPhone 7": .iPhone],
    "iPhone9,3"   :["iPhone 7": .iPhone],
    "iPhone9,2"   :["iPhone 7 Plus": .iPhone],
    "iPhone9,4"   :["iPhone 7 Plus": .iPhone],
    "iPhone10,1"  :["iPhone 8": .iPhone],
    "iPhone10,4"  :["iPhone 8": .iPhone],
    "iPhone10,2"  :["iPhone 8 Plus": .iPhone],
    "iPhone10,5"  :["iPhone 8 Plus": .iPhone],
    "iPhone10,3"  :["iPhone X": .iPhone],
    "iPhone10,6"  :["iPhone X": .iPhone],
    "iPhone11,2"  :["iPhone XS": .iPhone],
    "iPhone11,4"  :["iPhone XS Max": .iPhone],
    "iPhone11,6"  :["iPhone XS Max": .iPhone],
    "iPhone11,8"  :["iPhone XR": .iPhone],
    "iPhone12,1"  :["iPhone 11": .iPhone],
    "iPhone12,3"  :["iPhone 11 Pro": .iPhone],
    "iPhone12,5"  :["iPhone 11 Pro Max": .iPhone],
    
    /* iPod */
    "iPod1,1"   :["iPod Touch 1st": .iPod],
    "iPod2,1"   :["iPod Touch 2nd": .iPod],
    "iPod3,1"   :["iPod Touch 3rd": .iPod],
    "iPod4,1"   :["iPod Touch 4th": .iPod],
    "iPod5,1"   :["iPod Touch 5th": .iPod],
    "iPod7,1"   :["iPod Touch 6th": .iPod],
    "iPod9,1"   :["iPod Touch 7th": .iPod],
    
    /* iPad */
    "iPad1,1"   :["iPad 1 ": .iPad],
    "iPad2,1"   :["iPad 2 WiFi": .iPad],
    "iPad2,2"   :["iPad 2 Cell": .iPad],
    "iPad2,3"   :["iPad 2 Cell":  .iPad],
    "iPad2,4"   :["iPad 2 WiFi":  .iPad],
    "iPad2,5"   :["iPad Mini WiFi":  .iPad],
    "iPad2,6"   :["iPad Mini Cell":  .iPad],
    "iPad2,7"   :["iPad Mini Cell":  .iPad],
    "iPad3,1"   :["iPad 3 WiFi":  .iPad],
    "iPad3,2"   :["iPad 3 Cell":  .iPad],
    "iPad3,3"   :["iPad 3 Cell":  .iPad],
    "iPad3,4"   :["iPad 4 WiFi":  .iPad],
    "iPad3,5"   :["iPad 4 Cell":  .iPad],
    "iPad3,6"   :["iPad 4 Cell":  .iPad],
    "iPad4,1"   :["iPad Air WiFi":  .iPad],
    "iPad4,2"   :["iPad Air Cell":  .iPad],
    "iPad4,3"   :["iPad Air China":  .iPad],
    "iPad4,4"   :["iPad Mini 2 WiFi":  .iPad],
    "iPad4,5"   :["iPad Mini 2 Cell":  .iPad],
    "iPad4,6"   :["iPad Mini 2 China":  .iPad],
    "iPad4,7"   :["iPad Mini 3 WiFi":  .iPad],
    "iPad4,8"   :["iPad Mini 3 Cell":  .iPad],
    "iPad4,9"   :["iPad Mini 3 China":  .iPad],
    "iPad5,1"   :["iPad Mini 4 WiFi":  .iPad],
    "iPad5,2"   :["iPad Mini 4 Cell":  .iPad],
    "iPad5,3"   :["iPad Air 2 WiFi":  .iPad],
    "iPad5,4"   :["iPad Air 2 Cell":  .iPad],
    "iPad6,3"   :["iPad Pro 9.7inch WiFi":  .iPad],
    "iPad6,4"   :["iPad Pro 9.7inch Cell":  .iPad],
    "iPad6,7"   :["iPad Pro 12.9inch WiFi":  .iPad],
    "iPad6,8"   :["iPad Pro 12.9inch Cell":  .iPad],
    "iPad6,11"  :["iPad 5th":  .iPad],
    "iPad6,12"  :["iPad 5th":  .iPad],
    "iPad7,1"   :["iPad Pro 12.9inch 2nd":  .iPad],
    "iPad7,2"   :["iPad Pro 12.9inch 2nd":  .iPad],
    "iPad7,3"   :["iPad Pro 10.5inch":  .iPad],
    "iPad7,4"   :["iPad Pro 10.5inch":  .iPad],
    "iPad7,5"   :["iPad 6th":  .iPad],
    "iPad7,6"   :["iPad 6th":  .iPad],
    "iPad8,1"   :["iPad Pro 11inch WiFi":  .iPad],
    "iPad8,2"   :["iPad Pro 11inch WiFi":  .iPad],
    "iPad8,3"   :["iPad Pro 11inch Cell":  .iPad],
    "iPad8,4"   :["iPad Pro 11inch Cell":  .iPad],
    "iPad8,5"   :["iPad Pro 12.9inch WiFi":  .iPad],
    "iPad8,6"   :["iPad Pro 12.9inch WiFi":  .iPad],
    "iPad8,7"   :["iPad Pro 12.9inch Cell":  .iPad],
    "iPad8,8"   :["iPad Pro 12.9inch Cell":  .iPad],
    "iPad11,1"  :["iPad Mini 5th WiFi":  .iPad],
    "iPad11,2"  :["iPad Mini 5th Cell":  .iPad],
    "iPad11,3"  :["iPad Air 3rd WiFi":  .iPad],
    "iPad11,4"  :["iPad Air 3rd Cell":  .iPad],
    
    /* watch */
    "Watch1,1"  :["Apple Watch 38mm":  .watch],
    "Watch1,2"  :["Apple Watch 42mm":  .watch],
    "Watch2,6"  :["Apple Watch Series 1 38mm":  .watch],
    "Watch2,7"  :["Apple Watch Series 1 42mm":  .watch],
    "Watch2,3"  :["Apple Watch Series 2 38mm":  .watch],
    "Watch2,4"  :["Apple Watch Series 2 42mm":  .watch],
    "Watch3,1"  :["Apple Watch Series 3 38mm (GPS+Cellular)":  .watch],
    "Watch3,2"  :["Apple Watch Series 3 42mm (GPS+Cellular)":  .watch],
    "Watch3,3"  :["Apple Watch Series 3 38mm (GPS)":  .watch],
    "Watch3,4"  :["Apple Watch Series 3 42mm (GPS)":  .watch],
    "Watch4,1"  :["Apple Watch Series 4 40mm (GPS)":  .watch],
    "Watch4,2"  :["Apple Watch Series 4 44mm (GPS)":  .watch],
    "Watch4,3"  :["Apple Watch Series 4 40mm (GPS+Cellular)":  .watch],
    "Watch4,4"  :["Apple Watch Series 4 44mm (GPS+Cellular)":  .watch],
    "Watch5,1"  :["Apple Watch Series 5 40mm (GPS)":  .watch],
    "Watch5,2"  :["Apple Watch Series 5 44mm (GPS)":  .watch],
    "Watch5,3"  :["Apple Watch Series 5 40mm (GPS+Cellular)":  .watch],
    "Watch5,4"  :["Apple Watch Series 5 44mm (GPS+Cellular)":  .watch],
    
    /* unknown */
    "unknown"   :["Unknown Device" : .unknown],
]

final public class AppleDevice {
    // MARK: - Con(De)structor
    private init() { }
    
    // MARK: - Properties
    private static let HW_MACHINE: String = "hw.machine"
    
    public static func getDeviceInfo() -> AppleDeviceInfo {
        var size: Int = 0
        sysctlbyname(HW_MACHINE, nil, &size, nil, 0)
        
        var machine = [CChar](repeating: 0, count: Int(size))
        sysctlbyname(HW_MACHINE, &machine, &size, nil, 0)
        
        let code: String = String(cString: machine)
        return AppleDeviceInfo.classify(code: code)
    }
}

final public class AppleDeviceInfo {
    
    // MARK: - Con(De)structor
    private init(code: String, infos: [String : AppleDeviceType]) {
        m_code = code
        m_productName = infos.keys.first!
        m_type = infos[m_productName]!
    }
    
    // MARK: - Properties
    private var m_type: AppleDeviceType
    public var type: AppleDeviceType {
        return m_type
    }
    
    private var m_code: String
    public var code: String {
        return m_code
    }
    
    private var m_productName: String
    public var productName: String {
        return m_productName
    }
    
    // MARK: - Private Static Methods
    
    fileprivate static func classify(code: String) -> AppleDeviceInfo {
        guard let dictionary = DeviceDictionary[code] else {
            return AppleDeviceInfo(code: "unknown", infos: DeviceDictionary["unknown"]!)
        }
        return AppleDeviceInfo(code: code, infos: dictionary)
    }
}
