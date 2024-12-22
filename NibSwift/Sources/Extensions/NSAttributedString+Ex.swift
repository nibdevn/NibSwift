import Foundation

extension NSAttributedString {
    
    public var mutable: NSMutableAttributedString { NSMutableAttributedString(attributedString: self) }
    
    public static func parseHTML2Text(sourceText text: String) -> NSAttributedString? {
        let encodeData = text.data(using: String.Encoding.utf8, allowLossyConversion: true)
        let attributedOptions = [
            NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html as Any,
            NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue as Any
            ]
        
        var attributedString: NSAttributedString?
        if let encodeData = encodeData {
            do {
                attributedString = try NSAttributedString(
                    data: encodeData,
                    options: attributedOptions,
                    documentAttributes: nil
                )
            } catch _ { }
        }
        return attributedString
    }
}

public func +(lhs: NSAttributedString, rhs: NSAttributedString) -> NSMutableAttributedString {
    let result = NSMutableAttributedString(string: lhs.string + rhs.string)
    lhs.enumerateAttributes(in: lhs.string.nsRange(), options: .longestEffectiveRangeNotRequired) { (attribute, range, pointer) in
        result.addAttributes(attribute, range: range)
    }
    rhs.enumerateAttributes(in: rhs.string.nsRange(), options: .longestEffectiveRangeNotRequired) { (attribute, range, pointer) in
        result.addAttributes(attribute, range: NSRange(location: lhs.length + range.location, length: range.length))
    }
    return result
}
