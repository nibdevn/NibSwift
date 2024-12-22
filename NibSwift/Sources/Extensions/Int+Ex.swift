import Foundation
import UIKit

extension Int {
    
    public var isEven: Bool { self % 2 == 0 }
    
    public var isOdd: Bool { self % 2 != 0 }
    
    public var isPositive: Bool { self >  0 }
    
    public var isNegative: Bool { self < 0 }
    
    public var isZero: Bool { self == 0 }
    
    public var float: Float { Float(self) }
    
    public var double: Double { Double(self) }
    
    public var cgfloat: CGFloat { CGFloat(self) }
    
    public var reciprocal: Double { self.double.reciprocal }
    
    public var comma: String { Formatter.numberFormatter().string(from: NSNumber(value: self)) ?? "" }
    
    public func range(start: Int = 0) -> CountableRange<Int> { (start..<self) }
    
    public static func random(min: Int, max: Int) -> Int {
        guard min <= max else { fatalError() }
        return random(in: min...max)
    }
}
