import Foundation

extension CGFloat {
    
    public var ceilValue: CGFloat { ceil(self) }
    
    public var floorValue: CGFloat { floor(self) }
    
    public var roundValue: CGFloat { float.roundValue.cgfloat }
    
    public var int: Int { Int(self) }
    
    public var float: Float { Float(self) }
    
    public var double: Double { Double(self) }
    
    public static func random(_ range: ClosedRange<CGFloat>) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt64(UINT32_MAX)) * (range.upperBound - range.lowerBound) + range.lowerBound
    }
    
    public static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        guard min < max else { fatalError() }
        return random(min...max)
    }
}
