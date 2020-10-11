import Foundation

extension Int {
    
    public var decimal: String {
        Formatter.numberFormatter().string(from: NSNumber(value:self)) ?? ""
    }
}
