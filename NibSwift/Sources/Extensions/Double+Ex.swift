import Foundation
import UIKit

extension Double {
    
    public var int: Int { Int(self) }
    
    public var float: Float { Float(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) }
    
    public var reciprocal: Double { (1 / self) }
    
    public func ceils(point: UInt = 0) -> Double {
        let decimal = Double(pow(10, CGFloat(point)))
        return ceil(self * decimal) / decimal
    }
    
    public func floors(point: UInt = 0) -> Double {
        let decimal = Double(pow(10, CGFloat(point)))
        return floor(self * decimal) / decimal
    }
    
    public func rounds(point: UInt = 0) -> Double {
        let decimal = Double(pow(10, CGFloat(point)))
        return Foundation.round(self * decimal) / decimal
    }
    
    public static func random(min: Double, max: Double) -> Double {
        guard min <= max else { fatalError() }
        return random(in: min...max)
    }
}
