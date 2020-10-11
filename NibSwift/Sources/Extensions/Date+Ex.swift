import Foundation

extension Date {
    
    public static func today(format: String = "yyyy/MM/dd HH:mm:ss") -> String {
        return Formatter.dateFormatter(format: format).string(from: Date())
    }
    
    public func toString(by format: String = "yyyy/MM/dd", locale: String = "en_US") -> String {
        return Formatter.dateFormatter(format: format, locale: locale).string(from: self)
    }
}
