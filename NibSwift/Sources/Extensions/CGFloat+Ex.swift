#if canImport(CoreGraphics)
import CoreGraphics

extension CGFloat {
    
    public var int: Int { Int(self) }
    
    public var float: Float { Float(self) }
    
    public var double: Double { Double(self) }
    
    public var reciprocal: CGFloat { (1 / self) }
    
    public func ceils(point: UInt = 0) -> CGFloat {
        let decimal = CGFloat(pow(10, CGFloat(point)))
        return ceil(self * decimal) / decimal
    }
    
    public func floors(point: UInt = 0) -> CGFloat {
        let decimal = CGFloat(pow(10, CGFloat(point)))
        return floor(self * decimal) / decimal
    }
    
    public func rounds(point: UInt = 0) -> CGFloat {
        let decimal = CGFloat(pow(10, CGFloat(point)))
        return Foundation.round(self * decimal) / decimal
    }
    
    public static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        guard min <= max else { fatalError() }
        return random(in: min...max)
    }
}
#endif
