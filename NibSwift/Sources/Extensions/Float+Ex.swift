import Foundation

extension Float {
    
    public var ceilValue: Float { ceilf(self) }
    
    public var floorValue: Float { floorf(self) }
    
    public var roundValue: Float { roundf(self) }
    
    public var int: Int { Int(self) }
    
    public var double: Double { Double(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) } 
    
    public static func random(_ range: ClosedRange<Float>) -> Float {
        return Float(arc4random()) / Float(UInt64(UINT32_MAX)) * (range.upperBound - range.lowerBound) + range.lowerBound
    }
    
    public static func random(min: Float, max: Float) -> Float {
        guard min < max else { fatalError() }
        return random(min...max)
    }
}
