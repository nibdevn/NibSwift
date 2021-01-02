import Foundation

extension Double {
    
    public var ceilValue: Double { ceil(self) }
    
    public var floorValue: Double { floor(self) }
    
    public var roundValue: Double { float.roundValue.double }
    
    public var float: Float { Float(self) }
    
    public var int: Int { Int(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) } 
    
    public static func random(_ range: ClosedRange<Double>) -> Double {
        return Double(arc4random()) / Double(UInt64(UINT32_MAX)) * (range.upperBound - range.lowerBound) + range.lowerBound
    }
    
    public static func random(min: Double, max: Double) -> Double {
        guard min < max else { fatalError() }
        return random(min...max)
    }
}
