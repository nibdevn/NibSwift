import Foundation


public struct InfoPlist {
    
    public enum StringValue: String, PlistKeyable, CaseIterable {
        public var key: String { self.rawValue }
        
        public typealias Value = String
        
        case appVersion = "CFBundleShortVersionString"
        case appBuild = "CFBundleVersion"
        case appName = "CFBundleDisplayName"
        case bundleName = "CFBundleName"
    }
    
    public static func get<Key: PlistKeyable>(_ type: Key) -> Key.Value? {
        guard let dictionary = Bundle.main.infoDictionary, let value = dictionary[type.key] as? Key.Value else { return nil }
        return value
    }
}

public protocol PlistKeyable {
    associatedtype Value
    var key: String { get }
}

extension PlistKeyable {
    
    public var value: Value? {
        guard let dictionary = Bundle.main.infoDictionary, let value = dictionary[key] as? Value else { return nil }
        return value
    }
}

