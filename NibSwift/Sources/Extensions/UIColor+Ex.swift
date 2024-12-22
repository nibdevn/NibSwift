import UIKit

extension UIColor {
    
    public typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    
    public var rgba: RGBA? {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            return (red: fRed.rounds(point: 5), green: fGreen.rounds(point: 5), blue: fBlue.rounds(point: 5), alpha: fAlpha.rounds(point: 5))
        } else {
            return nil
        }
    }
    
    public var rgba255: RGBA? {
        var fRed: CGFloat = 0
        var fGreen: CGFloat = 0
        var fBlue: CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            return (red: (fRed * 255.0).rounds(point: 5), green: (fGreen * 255.0).rounds(point: 5), blue: (fBlue * 255.0).rounds(point: 5), alpha: fAlpha.rounds(point: 5))
        } else {
            return nil
        }
    }
    
    public convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hexData = hex.replacingOccurrences(of: "#", with: "").uppercased()
        let v = hexData.map { String($0) } + Array(repeating: "0", count: max(6 - hexData.count, 0))
        let r = CGFloat(Int(v[0] + v[1], radix: 16) ?? 0) / 255.0
        let g = CGFloat(Int(v[2] + v[3], radix: 16) ?? 0) / 255.0
        let b = CGFloat(Int(v[4] + v[5], radix: 16) ?? 0) / 255.0
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
    
    public convenience init(hexInt: Int, alpha: CGFloat = 1.0) {
        self.init(red:   CGFloat((hexInt >> 16) & 0xFF) / 255.0,
                  green: CGFloat((hexInt >> 8) & 0xFF) / 255.0,
                  blue:  CGFloat((hexInt) & 0xFF) / 255.0,
                  alpha: 255.0 * alpha / 255.0)
    }
}

