import Foundation
import UIKit

extension String {
    
    public var stringTrim: String {
       return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    public func localizedWithComment(comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    public func arrayBySplit(splitter: String? = nil) -> [String] {
        guard let split = splitter else { return components(separatedBy: .whitespacesAndNewlines) }
        return components(separatedBy: split)
    }
    
    public func evaluateStringWidth (font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return (self as NSString).size(withAttributes: fontAttributes).width
    }
    
    public func heightForWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let rect = NSString(string: self).boundingRect(
            with: CGSize(width: width, height: CGFloat(MAXFLOAT)),
            options: .usesLineFragmentOrigin,
            attributes: [kCTFontAttributeName as NSAttributedString.Key: font],
            context: nil
        )
        return ceil(rect.height)
    }
    
    public func getSizeString(font: UIFont) -> CGSize {
        return NSString(string: self).boundingRect(
                with: CGSize(width: CGFloat(MAXFLOAT), height: CGFloat(MAXFLOAT)),
                options: .usesLineFragmentOrigin,
                attributes: [kCTFontAttributeName as NSAttributedString.Key: font],
                context: nil
            ).size
    }
    
    public func customAttributedString(value: String, dic: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttributes(dic, range: (self as NSString).range(of: value))
        return attributedString
    }
}
