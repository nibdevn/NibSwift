import Foundation

extension Error {
    
    public var nsError: NSError { self as NSError }
    
    public var code: Int { nsError.code }
    
    public var domain: String { nsError.domain }
}
