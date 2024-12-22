import Foundation
import UIKit

extension Float {

    public var int: Int { Int(self) }
    
    public var double: Double { Double(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) }
    
    public var reciprocal: Float { (1 / self) }
    
    public func ceils(point: UInt = 0) -> Float {
        let decimal = pow(10.0, Float(point))
        return ceilf(self * decimal) / decimal
    }
    
    public func floors(point: UInt = 0) -> Float {
        let decimal = pow(10.0, Float(point))
        return floorf(self * decimal) / decimal
    }
    
    public func rounds(point: UInt = 0) -> Float {
        let decimal = pow(10.0, Float(point))
        return roundf(self * decimal) / decimal
    }
    
    public static func random(min: Float, max: Float) -> Float {
        guard min <= max else { fatalError() }
        return random(in: min...max)
    }
}
