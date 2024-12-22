#if canImport(Foundation)
import Foundation

extension TimeZone {
    
    /// Enum in the Timezone list.
    ///
    public enum AbbreviationKey: String, CaseIterable {
        case ADT
        case AKDT
        case AKST
        case ART
        case AST
        case BDT
        case BRST
        case BRT
        case BST
        case CAT
        case CDT
        case CEST
        case CET
        case CLST
        case CLT
        case COT
        case CST
        case EAT
        case EDT
        case EEST
        case EET
        case EST
        case GMT
        case GST
        case HKT
        case HST
        case ICT
        case IRST
        case IST
        case JST
        case KST
        case MDT
        case MSD
        case MSK
        case MST
        case NDT
        case NST
        case NZDT
        case NZST
        case PDT
        case PET
        case PHT
        case PKT
        case PST
        case SGT
        case TRT
        case UTC
        case WAT
        case WEST
        case WET
        case WIT
        
        ///
        public var identifier: String? {
            return TimeZone.abbreviationDictionary[self.rawValue]
        }
        
        public var timeZone: TimeZone? {
            return TimeZone(abbreviation: self.rawValue)
        }
    }
}
#endif
