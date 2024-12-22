import Foundation

extension NSMutableAttributedString {
    
    public func attributed(value: String? = nil, attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        self.addAttributes(attribute, range: string.nsString.range(of: value ?? self.string))
        return self
    }
    
    public func attributed(values: [String], attribute: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        values.forEach {
            self.addAttributes(attribute, range: string.nsString.range(of: $0))
        }
        return self
    }
    
    public func attributed(attributes: [String: [NSAttributedString.Key: Any]]) -> NSMutableAttributedString {
        attributes.compactMap { ($0.key, $0.value) }.forEach {
            self.addAttributes($0.1, range: string.nsString.range(of: $0.0))
        }
        return self
    }
}

