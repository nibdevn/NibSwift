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
    
    public func attributedString(value: String, attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttributes(attribute, range: (self as NSString).range(of: value))
        return attributedString
    }
    
    public func attributedString(values: [String], attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        values.forEach {
            attributedString.addAttributes(attribute, range: (self as NSString).range(of: $0))
        }
        return attributedString
    }
    
    public func attributedString(attributes: [String: [NSAttributedString.Key: Any]]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributes.keys.filter { attributes[$0] != nil }.forEach {
            attributedString.addAttributes(attributes[$0]!, range: (self as NSString).range(of: $0))
        }
        return attributedString
    }
}
