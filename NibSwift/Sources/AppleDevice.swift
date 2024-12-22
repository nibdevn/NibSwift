import Foundation

public enum AppleDeviceType {
    case simulator
    case iPad
    case iPhone
    case iPod
    case watch
    case tv
    case unknown
}

fileprivate let DeviceDictionary:[String : (name: String, type: AppleDeviceType)] = [
    /* Simulator */
    "i386"      : (name: "Simulator i386", type: .simulator),
    "x86_64"    : (name: "Simulator x86_64", type: .simulator),
    
    /* Apple TV */
    "AppleTV1,1" : (name: "Apple TV 1Gen", type: .tv),
    "AppleTV2,1" : (name: "Apple TV 2Gen", type: .tv),
    "AppleTV3,1" : (name: "Apple TV 3Gen", type: .tv),
    "AppleTV3,2" : (name: "Apple TV 3Gen rev.2", type: .tv),
    "AppleTV5,3" : (name: "Apple TV 4Gen", type: .tv),
    "AppleTV6,2" : (name: "Apple TV 4K", type: .tv),
    
    /* iPhone */
    "iPhone1,1" : (name: "iPhone 2G", type: .iPhone),
    "iPhone1,2" : (name: "iPhone 3G", type: .iPhone),
    "iPhone2,1" : (name: "iPhone 3GS", type: .iPhone),
    "iPhone3,1" : (name: "iPhone 4 GSM", type: .iPhone),
    "iPhone3,2" : (name: "iPhone 4 GSM (2012)", type: .iPhone),
    "iPhone4,1" : (name: "iPhone 4S", type: .iPhone),
    "iPhone5,1" : (name: "iPhone 5 GSM", type: .iPhone),
    "iPhone5,2" : (name: "iPhone 5 Global", type: .iPhone),
    "iPhone5,3" : (name: "iPhone 5C GSM", type: .iPhone),
    "iPhone5,4" : (name: "iPhone 5C Global", type: .iPhone),
    "iPhone6,1" : (name: "iPhone 5S GSM", type: .iPhone),
    "iPhone6,2" : (name: "iPhone 5S Global", type: .iPhone),
    "iPhone7,1" : (name: "iPhone 6 Plus", type: .iPhone),
    "iPhone7,2" : (name: "iPhone 6", type: .iPhone),
    "iPhone8,1" : (name: "iPhone 6S", type: .iPhone),
    "iPhone8,2" : (name: "iPhone 6S Plus", type: .iPhone),
    "iPhone8,4" : (name: "iPhone SE GSM", type: .iPhone),
    "iPhone9,1" : (name: "iPhone 7 Global", type: .iPhone),
    "iPhone9,2" : (name: "iPhone 7 Plus Global", type: .iPhone),
    "iPhone9,3" : (name: "iPhone 7 GSM", type: .iPhone),
    "iPhone9,4" : (name: "iPhone 7 Plus GSM", type: .iPhone),
    "iPhone10,1" : (name: "iPhone 8 Global", type: .iPhone),
    "iPhone10,2" : (name: "iPhone 8 Plus Global", type: .iPhone),
    "iPhone10,3" : (name: "iPhone X Global", type: .iPhone),
    "iPhone10,4" : (name: "iPhone 8 GSM", type: .iPhone),
    "iPhone10,5" : (name: "iPhone 8 Plus GSM", type: .iPhone),
    "iPhone10,6" : (name: "iPhone X GSM", type: .iPhone),
    "iPhone11,2" : (name: "iPhone XS", type: .iPhone),
    "iPhone11,4" : (name: "iPhone XS Max", type: .iPhone),
    "iPhone11,6" : (name: "iPhone XS Max (China)", type: .iPhone),
    "iPhone11,8" : (name: "iPhone XR", type: .iPhone),
    "iPhone12,1" : (name: "iPhone 11", type: .iPhone),
    "iPhone12,3" : (name: "iPhone 11 Pro", type: .iPhone),
    "iPhone12,5" : (name: "iPhone 11 Pro Max", type: .iPhone),
    "iPhone12,8" : (name: "iPhone SE (2020)", type: .iPhone),
    "iPhone13,1" : (name: "iPhone 12 Mini", type: .iPhone),
    "iPhone13,2" : (name: "iPhone 12", type: .iPhone),
    "iPhone13,3" : (name: "iPhone 12 Pro", type: .iPhone),
    "iPhone13,4" : (name: "iPhone 12 Pro Max", type: .iPhone),
    
    /* iPad */
    "iPad1,1" : (name: "iPad", type: .iPad),
    "iPad1,2" : (name: "iPad 3G", type: .iPad),
    "iPad2,1" : (name: "iPad 2 WiFi", type: .iPad),
    "iPad2,2" : (name: "iPad 2 GSM", type: .iPad),
    "iPad2,3" : (name: "iPad 2 CDMA", type: .iPad),
    "iPad2,4" : (name: "iPad 2 CDMA (2012)", type: .iPad),
    "iPad2,5" : (name: "iPad Mini WiFi", type: .iPad),
    "iPad2,6" : (name: "iPad Mini GSM", type: .iPad),
    "iPad2,7" : (name: "iPad Mini Global", type: .iPad),
    "iPad3,1" : (name: "iPad 3 Wifi", type: .iPad),
    "iPad3,2" : (name: "iPad 3 CDMA", type: .iPad),
    "iPad3,3" : (name: "iPad 3 GSM", type: .iPad),
    "iPad3,4" : (name: "iPad 4 Wifi", type: .iPad),
    "iPad3,5" : (name: "iPad 4 GSM", type: .iPad),
    "iPad3,6" : (name: "iPad 4 Global", type: .iPad),
    "iPad4,1" : (name: "iPad Air Wifi", type: .iPad),
    "iPad4,2" : (name: "iPad Air Cellular", type: .iPad),
    "iPad4,3" : (name: "iPad Air Cellular (China)", type: .iPad),
    "iPad4,4" : (name: "iPad Mini 2 Wifi", type: .iPad),
    "iPad4,5" : (name: "iPad Mini 2 Cellular", type: .iPad),
    "iPad4,6" : (name: "iPad Mini 2 Cellular (China)", type: .iPad),
    "iPad4,7" : (name: "iPad Mini 3 Wifi", type: .iPad),
    "iPad4,8" : (name: "iPad Mini 3 Cellular", type: .iPad),
    "iPad4,9" : (name: "iPad Mini 3 Cellular (China)", type: .iPad),
    "iPad5,1" : (name: "iPad Mini 4 Wifi", type: .iPad),
    "iPad5,2" : (name: "iPad Mini 4 Cellular", type: .iPad),
    "iPad5,3" : (name: "iPad Air 2 Wifi", type: .iPad),
    "iPad5,4" : (name: "iPad Air 2 Cellular", type: .iPad),
    "iPad6,3" : (name: "iPad Pro 9.7 Wifi", type: .iPad),
    "iPad6,4" : (name: "iPad Pro 9.7 Cellular", type: .iPad),
    "iPad6,7" : (name: "iPad Pro 12.9 Wifi", type: .iPad),
    "iPad6,8" : (name: "iPad Pro 12.9 Cellular", type: .iPad),
    "iPad6,11" : (name: "iPad Pro 9.7 5th Gen Wifi", type: .iPad),
    "iPad6,12" : (name: "iPad Pro 9.7 5th Gen　Cellular", type: .iPad),
    "iPad7,1" : (name: "iPad Pro 2 12.9 WiFi", type: .iPad),
    "iPad7,2" : (name: "iPad Pro 2 12.9 Cellular", type: .iPad),
    "iPad7,3" : (name: "iPad Pro 10.5 Wifi", type: .iPad),
    "iPad7,4" : (name: "iPad Pro 10.5 Cellular", type: .iPad),
    "iPad7,5" : (name: "iPad 9.7 6th Gen Wifi", type: .iPad),
    "iPad7,6" : (name: "iPad 9.7 6th Gen　Cellular", type: .iPad),
    "iPad7,11" : (name: "iPad 10.2 7th Gen Wifi", type: .iPad),
    "iPad7,12" : (name: "iPad 10.2 7th Gen　Cellular", type: .iPad),
    "iPad8,1" : (name: "iPad Pro 11 Wifi", type: .iPad),
    "iPad8,2" : (name: "iPad Pro 11 Wifi (1TB)", type: .iPad),
    "iPad8,3" : (name: "iPad Pro 11 Cellular", type: .iPad),
    "iPad8,4" : (name: "iPad Pro 11 Cellular (1TB)", type: .iPad),
    "iPad8,5" : (name: "iPad Pro 12.9 Wifi", type: .iPad),
    "iPad8,6" : (name: "iPad Pro 12.9 Wifi (1TB)", type: .iPad),
    "iPad8,7" : (name: "iPad Pro 12.9 Cellular", type: .iPad),
    "iPad8,8" : (name: "iPad Pro 12.9 Cellular (1TB)", type: .iPad),
    "iPad8,9" : (name: "iPad Pro 11 2nd Gen Wifi", type: .iPad),
    "iPad8,10" : (name: "iPad Pro 11 2nd Gen Cellular", type: .iPad),
    "iPad8,11" : (name: "iPad Pro 12.9 4th Gen Wifi", type: .iPad),
    "iPad8,12" : (name: "iPad Pro 12.9 4th Gen Cellular", type: .iPad),
    "iPad11,1" : (name: "iPad Mini 5 Wifi", type: .iPad),
    "iPad11,2" : (name: "iPad Mini 5 Cellular", type: .iPad),
    "iPad11,3" : (name: "iPad Air 3 Wifi", type: .iPad),
    "iPad11,4" : (name: "iPad Air 3 Cellular", type: .iPad),
    "iPad11,6" : (name: "iPad 10.2 8th Gen Wifi", type: .iPad),
    "iPad11,7" : (name: "iPad 10.2 8th Gen Cellular", type: .iPad),
    "iPad13,1" : (name: "iPad Air 4 Wifi", type: .iPad),
    "iPad13,2" : (name: "iPad Air 4 Cellular", type: .iPad),
    
    /* iPod */
    "iPod1,1" : (name: "iPod 1Gen", type: .iPod),
    "iPod2,1" : (name: "iPod 2Gen", type: .iPod),
    "iPod3,1" : (name: "iPod 3Gen", type: .iPod),
    "iPod4,1" : (name: "iPod 4Gen", type: .iPod),
    "iPod5,1" : (name: "iPod 5Gen", type: .iPod),
    "iPod7,1" : (name: "iPod 6Gen", type: .iPod),
    "iPod9,1" : (name: "iPod 7Gen", type: .iPod),
    
    /* Apple Watch */
    "Watch1,1" : (name: "Apple Watch 38mm", type: .watch),
    "Watch1,2" : (name: "Apple Watch 42mm", type: .watch),
    "Watch2,3" : (name: "Apple Watch Series 2 38mm", type: .watch),
    "Watch2,4" : (name: "Apple Watch Series 2 42mm", type: .watch),
    "Watch2,6" : (name: "Apple Watch Series 1 38mm", type: .watch),
    "Watch2,7" : (name: "Apple Watch Series 1 42mm", type: .watch),
    "Watch3,1" : (name: "Apple Watch Series 3 38mm Cellular", type: .watch),
    "Watch3,2" : (name: "Apple Watch Series 3 42mm Cellular", type: .watch),
    "Watch3,3" : (name: "Apple Watch Series 3 38mm GPS", type: .watch),
    "Watch3,4" : (name: "Apple Watch Series 3 42mm GPS", type: .watch),
    "Watch4,1" : (name: "Apple Watch Series 4 40mm GPS", type: .watch),
    "Watch4,2" : (name: "Apple Watch Series 4 44mm GPS", type: .watch),
    "Watch4,3" : (name: "Apple Watch Series 4 40mm Cellular", type: .watch),
    "Watch4,4" : (name: "Apple Watch Series 4 44mm Cellular", type: .watch),
    "Watch5,1" : (name: "Apple Watch Series 5 40mm GPS", type: .watch),
    "Watch5,2" : (name: "Apple Watch Series 5 44mm GPS", type: .watch),
    "Watch5,3" : (name: "Apple Watch Series 5 40mm Cellular", type: .watch),
    "Watch5,4" : (name: "Apple Watch Series 5 44mm Cellular", type: .watch),
    "Watch5,9" : (name: "Apple Watch Series SE 40mm GPS", type: .watch),
    "Watch5,10" : (name: "Apple Watch Series SE 44mm GPS", type: .watch),
    "Watch5,11" : (name: "Apple Watch Series SE 40mm Cellular", type: .watch),
    "Watch5,12" : (name: "Apple Watch Series SE 44mm Cellular", type: .watch),
    "Watch6,1" : (name: "Apple Watch Series 6 40mm GPS", type: .watch),
    "Watch6,2" : (name: "Apple Watch Series 6 44mm GPS", type: .watch),
    "Watch6,3" : (name: "Apple Watch Series 6 40mm Cellular", type: .watch),
    "Watch6,3" : (name: "Apple Watch Series 6 44mm Cellular", type: .watch),
    
    /* UnKnown */
    "unknown"   : (name: "Unknown Device", type: .unknown)
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
    private init(code: String, productName: String, type: AppleDeviceType) {
        self.code = code
        self.productName = productName
        self.type = type
    }
    
    // MARK: - Properties
    public private(set) var code: String
    public private(set) var productName: String
    public private(set) var type: AppleDeviceType
    
    // MARK: - Private Static Methods
    
    fileprivate static func classify(code: String) -> AppleDeviceInfo {
        guard let dictionary = DeviceDictionary[code] else { return AppleDeviceInfo(code: "unknown", productName: "Unknown Device", type: .unknown) }
        return AppleDeviceInfo(code: code, productName: dictionary.name, type: dictionary.type)
    }
}
