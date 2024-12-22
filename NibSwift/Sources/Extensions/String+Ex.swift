import Foundation
import UIKit

extension String {
    
    public var nsString: NSString {
        return (self as NSString)
    }
    
    public func nsRange(of value: String? = nil) -> NSRange {
        return nsString.range(of: value ?? self)
    }
    
    public var trim: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    public func localizedWithComment(comment: String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    public func split(separator: String? = nil) -> [String] {
        guard let sep = separator else { return components(separatedBy: .whitespacesAndNewlines) }
        return components(separatedBy: sep)
    }
    
    public enum SizeWith {
        case none
        case width(CGFloat)
        case height(CGFloat)
    }
    
    public func size(font: UIFont, by sizeWith: SizeWith = .none) -> CGSize {
        var with = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        switch sizeWith {
        case .none: with = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        case .width(let by): with = CGSize(width: by, height: CGFloat.greatestFiniteMagnitude)
        case .height(let by): with = CGSize(width: CGFloat.greatestFiniteMagnitude, height: by)
        }
        let boundingRect = nsString.boundingRect(
            with: with,
            options: [.usesFontLeading, .usesLineFragmentOrigin],
            attributes: [.font: font as Any],
            context: nil).size
        return CGSize(width: boundingRect.width, height: boundingRect.height)
    }
    
    public func size(font: UIFont, width: CGFloat? = nil, height: CGFloat? = nil) -> CGSize {
        let boundingRect = nsString.boundingRect(
            with: CGSize(width: width ?? CGFloat.greatestFiniteMagnitude, height: height ?? CGFloat.greatestFiniteMagnitude),
            options: [.usesFontLeading, .usesLineFragmentOrigin],
            attributes: [.font: font as Any],
            context: nil).size
        return CGSize(width: boundingRect.width.ceils(point: 3), height: boundingRect.height.ceils(point: 3))
    }
    
    public func size(font: UIFont, numberOfLines: Int, width: CGFloat? = nil) -> CGSize {
        let height: CGFloat = numberOfLines > 0 ? font.lineHeight * numberOfLines.cgfloat : CGFloat.greatestFiniteMagnitude
        return size(font: font, width: width, height: height)
    }
    
    public func numberOfLines(font: UIFont, width: CGFloat) -> Int {
        return (size(font: font, width: width).height / font.lineHeight).floors().int
    }
    
    public func attributed(value: String? = nil, attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        return attributedString.attributed(value: value ?? self, attribute: attribute)
    }
    
    public func attributedString(values: [String], attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        return attributedString.attributed(values: values, attribute: attribute)
    }
    
    public func attributedString(attributes: [String: [NSAttributedString.Key: Any]]) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        return attributedString.attributed(attributes: attributes)
    }
    
    public func appendPath(_ value: CustomStringConvertible) -> String {
        var result = self
        if result.last == "/", value.description.first == "/" { result = String(result.dropLast()) }
        if result.last != "/", value.description.first != "/" { result.append("/") }
        return result + value.description
    }
}

public func +(lhs: String, rhs: CustomStringConvertible) -> String { lhs + rhs.description }
public func +=(lhs: inout String, rhs: CustomStringConvertible) { lhs += rhs.description }
