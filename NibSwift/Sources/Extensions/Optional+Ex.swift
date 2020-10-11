import Foundation

extension Optional {
    
    public func unwrapIf(_ handler: @escaping (Wrapped) -> Bool) -> Bool {
        switch self {
        case .some(let value): return handler(value)
        case .none: return false
        }
    }
}
