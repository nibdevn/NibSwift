import Foundation

extension Int {
    
    public var isEven: Bool { self % 2 == 0 }
    
    public var isOdd: Bool { self % 2 != 0 }
    
    public var isPositive: Bool { self >  0 }
    
    public var isNegative: Bool { self < 0 }
    
    public var float: Float { Float(self) }
    
    public var double: Double { Double(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) }
    
    public var decimal: String { Formatter.numberFormatter().string(from: NSNumber(value:self)) ?? "" }
    
    public static func random(_ range: ClosedRange<Int>) -> Int {
        return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound + 1)))
    }
    
    public static func random(min: Int, max: Int) -> Int {
        guard min < max else { fatalError() }
        return random(min...max)
    }
}
