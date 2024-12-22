import Foundation

extension Date {
    
    public static func today(format: String = "yyyy/MM/dd HH:mm:ss") -> String {
        return Date().toString(by: format, timezone: .UTC)
    }
    
    public func toString(by format: String = "yyyy/MM/dd", locale: String = "en_US", timezone: TimeZone.AbbreviationKey) -> String {
        return Formatter.dateFormatter(format: format, locale: locale, timezone: timezone).string(from: self)
    }
}
